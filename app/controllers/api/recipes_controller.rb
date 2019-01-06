class Api::RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @recipes = Recipe.includes(:recipe_ingredients, :recipe_utensils, :ingredients, :utensils,
                               :image_attachment => :blob).all
    render json: @recipes.as_json(include: [
      :recipe_ingredients, :ingredients,
      :recipe_utensils, :utensils,
    ], methods: %i(image_url))
  end

  def show
    find_recipe
    view = @recipe.view
    @recipe.update_attribute(:view, view + 1)
    render json: @recipe.as_json(:include => [
      :recipe_ingredients, :ingredients,
      :recipe_utensils, :utensils,
    ], methods: %i(image_url))
  end

  def new
    @recipe = Recipe.new
  end

  def create
    new_recipe = Recipe.new(recipe_params)
    if new_recipe.valid? && new_recipe.image.attached?
      if new_recipe.image.blob.content_type.starts_with?('image/')
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

  def find_recipe
    if !Recipe.find_by_id(params[:id]).nil?
      @recipe = Recipe.includes(:recipe_ingredients, :recipe_utensils, :ingredients, :utensils,
                                :image_attachment => :blob).find(params[:id])
    else
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_id") }.as_json
    end
  end

  def recipe_params
    params.require(:recipe).permit(:title, :score, :step, :time, :description, :difficulty, :view,
                                   :image, :ingredient_ids => [], :utensil_ids => [])
  end
end
