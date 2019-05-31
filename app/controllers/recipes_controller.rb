class RecipesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    skip_policy_scope
    @recipes = Recipe.all.with_attached_image
  end

  def show
    find_recipe
    view = @recipe.view
    if user_signed_in?
      @feedback_user = @recipe.recipe_scores.find_by(:user_id => current_user.id)
    end
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
    @recipe = Recipe.find(params[:recipe_id])
    if @recipe
      shopping_list = ShoppingList.find_by_id(shopping_list_params[:shopping_lists])
      shopping_list.ingredients << @recipe.ingredients
      if shopping_list.save
        redirect_to shopping_list_path(id: shopping_list.id),
                    flash: { success: "Les ingrédients ont été ajoutés à la liste" }
      end
    end
  end

  private

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

  def shopping_list_params
    params.require(:recipe).permit(:shopping_lists, :id)
  end
end
