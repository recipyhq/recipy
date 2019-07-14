class RecipesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    skip_policy_scope
    @recipes = Recipe.order(:title).all.with_attached_image
  end

  def show
    find_recipe
    view = @recipe.view
    if user_signed_in?
      @feedback_user = @recipe.recipe_scores.find_by(:user_id => current_user.id)
    end
    @notebooks_available = Notebook.where(user_id: current_user.id).where.not(id: @recipe.notebooks).order(:title)
    @recipe.update_attribute(:view, view + 1)
    @recipe_feedbacks = @recipe.recipe_scores
  end

  def show_user_recipes
    find_recipes_by_user_id
  end

  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build
  end

  def create
    @recipe_params = recipe_params
    new_ingredients = @recipe_params[:recipe_ingredients_attributes]
    if new_ingredients.nil?
      redirect_to new_recipe_path, flash: {
        danger: t('recipe.creation.missing_ingredients'),
      }
    else
      steps = @recipe_params[:steps_raw]
      split_steps = steps.split("\r\n")
      @recipe_params[:steps] = split_steps.collect(&:strip)
      @recipe_params.delete(:steps_raw)
      @recipe_params.delete(:recipe_ingredients_attributes)
      new_recipe = Recipe.new(@recipe_params)
      if new_recipe.invalid?
        redirect_to new_recipe_path, flash: {
          danger: new_recipe.errors.values.to_sentence(words_connector: ' ',
                                                       last_word_connector: ' '),
        }
        return
      end
      new_ingredients.each do |elem|
        unless new_recipe.ingredients.any? { |ingredient| ingredient.id == elem[1].values[0].to_i }
          new_recipe.ingredients << Ingredient.find(elem[1].values[0])
          if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
            value = elem[1].values[1]
            recipe_quantity = RecipeQuantity.create!(:value => value.values[0],
                                                     :quantity_type =>
                                                       QuantityType.find(value.values[1]))
            last = new_recipe.recipe_ingredients.last
            last.recipe_quantity = recipe_quantity
          end
        end
      end
      new_recipe.user = current_user
      new_recipe.save

      redirect_to recipe_path(Recipe.last.id), flash: { success: t("recipe.creation.valid") }
    end
  end

  def edit
    find_recipe_edit
  end

  def update
    Bullet.enable = false
    find_recipe
    @recipe_params = recipe_params
    steps = @recipe_params[:steps_raw]
    split_steps = steps.split("\n")
    @recipe_params[:steps] = split_steps.collect(&:strip)
    new_ingredients = @recipe_params[:recipe_ingredients_attributes]
    @recipe_params.delete(:recipe_ingredients_attributes)
    @recipe_params.delete(:steps_raw)
    if new_ingredients.nil?
      redirect_to edit_recipe_path(@recipe), flash: {
        danger: t('recipe.creation.missing_ingredients'),
      }
    else
      @recipe.recipe_ingredients.destroy_all
      new_ingredients.each do |elem|
        if elem[1].values[2] == "false"
          unless @recipe.ingredients.any? { |ingredient| ingredient.id == elem[1].values[0].to_i }
            @recipe.ingredients << Ingredient.find(elem[1].values[0])
            if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
              value = elem[1].values[1]
              recipe_quantity = RecipeQuantity.create!(:value => value.values[0],
                                                       :quantity_type =>
                                                         QuantityType.find(value.values[1]))
              last = @recipe.recipe_ingredients.last
              last.recipe_quantity = recipe_quantity
            end
          end
        end
      end
      if @recipe.update(@recipe_params)
        if @recipe.image.blob.content_type.starts_with?('image/')
          redirect_to recipe_path, flash: { success: t("recipe.edit.valid") }
        else
          redirect_to edit_recipe_path(@recipe), flash: { danger: t("recipe.edit.invalid_image") }
        end
      else
        redirect_to edit_recipe_path(@recipe), flash: { danger: t("recipe.edit.invalid") }
      end
    end
  end

  def destroy
    Bullet.enable = false
    find_recipe
    @recipe.image.purge_later
    @recipe.destroy
    redirect_to recipes_path, flash: { success: t("recipe.destroy.valid") }
  end

  def add_ingredients_to_list
    previous_bullet = Bullet.enable?
    Bullet.enable = false
    # Temporary disabling Bullet because there's too many exceptions in the method to handle
    recipe = Recipe.includes(:recipe_ingredients => [
      :ingredient,
      :recipe_quantity => :quantity_type,
    ]).find(params[:recipe_id])
    if recipe
      shopping_list = ShoppingList.includes(:shopping_list_ingredients => [
        :ingredient,
        :shopping_list_quantity,
      ]).find(shopping_list_params[:shopping_lists])
      recipe.recipe_ingredients.each do |elem|
        # If ingredient is already in list, just sum the quantities
        if shopping_list.ingredients.find_by(name: elem.ingredient.name)
          sum_shopping_list_quantities(shopping_list, elem)
        else
          create_shopping_list_quantity(shopping_list, elem)
        end
      end
      Bullet.enable = previous_bullet
      if shopping_list.save
        redirect_to shopping_list_path(id: shopping_list.id),
                    flash: { success: "Les ingrédients ont été ajoutés à la liste" }
      end
    end
  end

  def add_ingredients_to_new_list
    recipe = Recipe.includes(:recipe_ingredients => [
      :ingredient,
      :recipe_quantity => :quantity_type,
    ]).find(params[:recipe_id])
    if recipe
      shopping_list = ShoppingList.new(user_id: current_user.id, name: recipe.title)
      recipe.recipe_ingredients.each do |elem|
        create_shopping_list_quantity(shopping_list, elem)
      end
      if shopping_list.save
        redirect_to shopping_list_path(id: shopping_list.id),
                    flash: { success: "Les ingrédients ont été ajoutés à la liste" }
      end
    end
  end

  def add_to_notebook
    notebooks_param = notebooks_params
    puts notebooks_param
    recipe = Recipe.find(params[:recipe_id])
    if recipe
      if (!notebooks_param[:notebooks])
        return redirect_to recipe_path(recipe.id), flash: { success: t("recipe.add_to_notebook.no_notebook") }
      end
      notebook = Notebook.find(notebooks_params[:notebooks])
      if notebook
        if notebook.recipes.find_by(id: recipe.id)
          return redirect_to recipe_path(recipe.id), flash: { success: t("recipe.add_to_notebook.already_in") }
        end

        notebook.recipes << recipe
        notebook.save()
      else
        return redirect_to recipe_path(recipe.id), flash: { success: t("recipe.add_to_notebook.no_notebook") }
      end
    end
    redirect_to notebook_path(notebook.id), flash: { success: t("recipe.add_to_notebook.valid") }
  end

  private

  def create_shopping_list_quantity(shopping_list, elem)
    shopping_list.ingredients << elem.ingredient
    if elem.recipe_quantity
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        shopping_list_quantity =
          ShoppingListQuantity.create!(:value => elem.recipe_quantity.value,
                                       :quantity_type => elem.recipe_quantity.quantity_type)
        last = shopping_list.shopping_list_ingredients.last
        last.shopping_list_quantity = shopping_list_quantity
      end
    end
  end

  def sum_shopping_list_quantities(shopping_list, elem)
    if elem.recipe_quantity
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        ing = ShoppingListIngredient.find_by(shopping_list_id: shopping_list.id,
                                             ingredient_id: elem.ingredient.id)
        if ing.shopping_list_quantity.nil?
          ing.shopping_list_quantity =
            ShoppingListQuantity.create!(:value => elem.recipe_quantity.value,
                                         :quantity_type => elem.recipe_quantity.quantity_type,)
          ing.save
        else
          quant = ing.shopping_list_quantity
          quant.value += elem.recipe_quantity.value
          quant.save
        end
      end
    end
  end

  def find_recipes_by_user_id
    @recipes = Recipe.where(user: current_user).where.
      not(user: nil).order(:view => :desc).all.with_attached_image
  end

  def find_recipe_edit
    @recipe = Recipe.includes(:recipe_ingredients => [
      :ingredient,
      :recipe_quantity => :quantity_type,
    ]).find(params[:id])
  end

  def find_recipe
    @recipe = Recipe.includes(:recipe_ingredients => [
      :ingredient,
      :recipe_quantity => :quantity_type,
    ],
                              :recipe_scores => [:user => [:avatar_attachment]]).find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :score, :steps_raw, :cooking_time, :preparation_time,
                                   :description, :difficulty, :person,
                                   :image, :recipe_ingredients_attributes => {},
                                           :utensil_ids => [],
                                           :recipe_category_ids => [])
  end

  def new_list_params
    params.require(:recipe).permit(:name)
  end

  def shopping_list_params
    params.require(:recipe).permit(:shopping_lists, :id)
  end

  def notebooks_params
    params.require(:recipe).permit(:notebooks, :id)
  end

  def is_quantity_type_abstract(qt)
    [
      "Cuillère(s) à soupe",
      "Cuillère(s) à café",
      "Non défini",
      "Noisette(s)",
      "Brin(s)",
      "Feuille(s)",
    ].include? qt
  end
end
