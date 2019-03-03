class Api::RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @recipes = Recipe.includes(:recipe_utensils,
                               :ingredients, :utensils,
                               recipe_ingredients:
                                 [:recipe_quantity => :quantity_type]).all.with_attached_image

    build_recipe_list_ingredients

    render json: @recipes_hash
  end

  def show
    find_recipe
    view = @recipe.view
    @recipe.update_attribute(:view, view + 1)

    recipe = @recipe.as_json(:include => [:utensils, :recipe_categories], methods: %i(image_url))
    tab = []

    build_recipe_ingredients(@recipe, tab)
    recipe['ingredients'] = tab

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

  private

  def build_recipe_ingredients(recipe, tab)
    i = 0
    if recipe.recipe_ingredients.nil? || recipe.ingredients.nil?
      tab.push([])
    else
      recipe.ingredients.each do |ingredient|
        if recipe.recipe_ingredients[i].recipe_quantity.nil?
          value = nil
          quantity_name = nil
        else
          value = recipe.recipe_ingredients[i].recipe_quantity.value
          quantity_name = recipe.recipe_ingredients[i].recipe_quantity.quantity_type.name
        end
        mrg = {
          :ingredient => ingredient,
          :quantity => [
            value,
            quantity_name,
          ],
        }
        i += 1
        tab.push(mrg)
      end
    end
  end

  def build_recipe_list_ingredients
    i = 0
    @mrg_tab = []
    @recipes_hash = @recipes.as_json(include: [
      :utensils,
    ], methods: %i(image_url))

    @recipes.each do |recipe|
      @mrg_tab.clear
      build_recipe_ingredients(recipe, @mrg_tab)
      @recipes_hash[i]['ingredients'] = @mrg_tab
      @recipes_hash[i].delete('time')
      @recipes_hash[i].delete('step')
      i += 1
    end
  end

  def find_recipe
    if !Recipe.find_by_id(params[:id]).nil?
      @recipe = Recipe.includes(:recipe_ingredients, :recipe_utensils, :ingredients, :utensils,
                                :image_attachment, :image_attachment => :blob).find(params[:id])
    else
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_id") }.as_json
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title, :score, :time, :description, :difficulty, :view,
                                   :image, :ingredient_ids => [], :utensil_ids => [], :steps => [])
  end
end
