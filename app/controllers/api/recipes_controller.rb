# rubocop:disable all
class Api::RecipesController < Api::BaseController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @recipes = Recipe.includes(:recipe_utensils,
                               :utensils,
                               recipe_ingredients:
                                 [
                                   :ingredient,
                                   :recipe_quantity => :quantity_type,
                                 ]).all.with_attached_image

    build_recipe_list_ingredients

    render json: @recipes_hash
  end

  def show_user_recipes
    skip_policy_scope
    begin
      user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    @recipes = Recipe.where(:user => user).includes(:recipe_utensils,
                               :utensils,
                               recipe_ingredients:
                                 [
                                   :ingredient,
                                   :recipe_quantity => :quantity_type,
                                 ]).all.with_attached_image

    build_recipe_list_ingredients

    render json: @recipes_hash
  end

  def show
    find_recipe
    view = @recipe.view
    @recipe.update_attribute(:view, view + 1)

    recipe = @recipe.as_json(:include => [:utensils, :recipe_categories, :diets], methods: %i(image_url))
    recipe['score'] = @recipe.recipe_scores.average(:value)
    recipe['ingredients'] = build_recipe_ingredients(@recipe)
    recipe['scores'] = build_recipe_scores(@recipe)

    render json: recipe.except(:step, :time)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    new_recipe = Recipe.new(recipe_params)
    if new_recipe.valid? && new_recipe.image.attached? && new_recipe.difficulty <= 10
      if new_recipe.image.blob.image?
        new_recipe.save
        render :json => { Status: "OK", Cause: t("recipe.creation.valid") }.as_json
      else
        render :json => { Status: "KO", Cause: t("recipe.creation.invalid_image") }.as_json
      end
    else
      render :json => { Status: "KO", Cause: t("recipe.creation.invalid") }.as_json
    end
  end

  def edit
    find_recipe
  end

  def update
    find_recipe
    if @recipe.update(recipe_params)
      render :json => { Status: "OK", Cause: t("recipe.edit.valid") }.as_json
    else
      render :json => { Status: "KO", Cause: t("recipe.edit.invalid") }.as_json
    end
  end

  def destroy
    find_recipe
    if !@recipe.nil?
      @recipe.destroy
      render :json => { Status: "OK", Cause: t("recipe.destroy.valid") }.as_json
    end
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
        if shopping_list.ingredients.find_by(id: elem.ingredient.id)
          sum_shopping_list_quantities(shopping_list, elem)
        else
          create_shopping_list_quantity(shopping_list, elem)
        end
      end
      Bullet.enable = previous_bullet
      if shopping_list.save
        render :json => { Status: "OK", Cause: "Les ingrédients ont été ajoutés à la liste"}.as_json
      else
        render :json => { Status: "KO", Cause: "Erreur lors de la sauvegarde de la liste de courses. Veuillez réessayer."}.as_json
      end
    else
      render :json => { Status: "KO", Cause: "Paramètres incomplets"}.as_json
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
        render :json => { Status: "OK", Cause: "Les ingrédients ont été ajoutés à la liste"}.as_json
      else
        render :json => { Status: "KO", Cause: "Erreur lors de la sauvegarde de la liste de courses. Veuillez réessayer."}.as_json
      end
    else
      render :json => { Status: "KO", Cause: "Paramètres incomplets"}.as_json
    end
  end

  private

  def create_shopping_list_quantity(shopping_list, elem)
    shopping_list.ingredients << elem.ingredient
    if elem.recipe_quantity
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        shopping_list_quantity = ShoppingListQuantity.create!(:value => elem.recipe_quantity.value,
                                                              :quantity_type => elem.recipe_quantity.quantity_type)
        last = shopping_list.shopping_list_ingredients.last
        last.shopping_list_quantity = shopping_list_quantity
      end
    end
  end

  def sum_shopping_list_quantities(shopping_list, elem)
    if elem.recipe_quantity
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        ings = ShoppingListIngredient.where(shopping_list_id: shopping_list.id,
                                            ingredient_id: elem.ingredient.id)

        ings.each do |ing|
          if ing.shopping_list_quantity.quantity_type.id == elem.recipe_quantity.quantity_type.id
            quant = ing.shopping_list_quantity
            quant.value += elem.recipe_quantity.value
            quant.save
            return
          end
        end
        create_shopping_list_quantity(shopping_list, elem)
      end
    end
  end

  def build_recipe_ingredients(recipe)
    @tab = []
    if recipe.recipe_ingredients.nil? || recipe.ingredients.nil?
      @tab.push([])
    else
      recipe.recipe_ingredients.each do |elem|
        if elem.recipe_quantity.nil?
          mrg = {
            :ingredient => elem.ingredient,
            :allergen => elem.ingredient.allergen_tags,
            :quantity => nil,
          }
        else
          mrg = {
            :ingredient => elem.ingredient,
            :allergen => elem.ingredient.allergen_tags,
            :quantity => [
              elem.recipe_quantity.value,
              elem.recipe_quantity.quantity_type.name,
            ],
          }
        end
        @tab.push(mrg)
      end
    end
    @tab
  end

  def build_recipe_scores(recipe)
    @tab = []
    if recipe.recipe_scores.nil?
      return @tab
    else
      recipe.recipe_scores.each do |score|
        mrg = {
          :value => score.value,
          :content => score.content,
          :updatedAt => score.updated_at,
          :user => {
            :email => score.user.email,
            :avatar => score.user.avatar.attached? ? rails_blob_url(score.user.avatar) : nil,
          }
        }
        @tab.push(mrg)
      end
    end
    @tab
  end

  def build_recipe_list_ingredients
    i = 0
    @recipes_hash = @recipes.as_json(include: [
      :utensils,
    ], methods: %i(image_url))

    @recipes.each do |recipe|
      build_recipe_ingredients(recipe)
      @recipes_hash[i]['score'] = recipe.recipe_scores.average(:value)
      @recipes_hash[i]['ingredients'] = build_recipe_ingredients(recipe)
      @recipes_hash[i].delete('time')
      @recipes_hash[i].delete('step')
      i += 1
    end
  end

  def find_recipe
    if !Recipe.find_by_id(params[:id]).nil?
      @recipe = Recipe.includes(:recipe_ingredients, :recipe_utensils, :utensils,
                                :image_attachment, recipe_ingredients: [
                                  :ingredient => :allergen_tags,
                                  :recipe_quantity => :quantity_type,
                                ], :recipe_scores => [:user => [:avatar_attachment]],
                                                   :image_attachment => :blob).find(params[:id])
    else
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_id") }.as_json
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title, :score, :time, :description, :difficulty, :view,
                                   :image, :ingredient_ids => [], :utensil_ids => [], :steps => [])
  end

  def shopping_list_params
    params.require(:recipe).permit(:shopping_lists, :id)
  end

  def is_quantity_type_abstract(qt)
    [
      "Cuillère(s) à soupe",
      "Cuillère(s) à café",
      "Non défini",
      "Noisette(s)",
      "Brin(s)",
      "Feuille(s)"
    ].include? qt
  end
end
# rubocop:enable all
