class IngredientsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @ingredient = Ingredient.new
  end

  def create
    if (!params[:ingredient].key?(:name) || !params[:ingredient].key?(:description)) ||
      params[:ingredient].keys.length != 3
      redirect_to new_ingredient_path, flash: { danger: t("recipe.creation.invalid") }
    else
      new_ingredient = Ingredient.new(ingredient_params)
      if new_ingredient.valid?
        new_ingredient.save
        redirect_to new_recipe_path
      else
        redirect_to new_ingredient_path, flash: { danger: t("recipe.creation.invalid") }
      end
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :tags, :image,
                                       :ingredient_tag_ids => [])
  end
end
