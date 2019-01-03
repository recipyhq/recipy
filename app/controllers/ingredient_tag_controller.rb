class IngredientTagController < ApplicationController
  def index
    skip_policy_scope
    @ingredient_tags = IngredientTag.all
    render json: @ingredient_tags.as_json
  end

  def show
    find_ingredient_tag
    render json: @ingredient_tag
  end

  def new
    @ingredient_tag = IngredientTag.new
  end

  def create
    if !params[:ingredient_tag].key?(:name)
      render :json => { Status: "KO", Cause: t("ingredient_tag.no_null") }.as_json
    else
      new_ingredient_tag = IngredientTag.new(ingredient_tag_params)
      if new_ingredient_tag.valid?
        new_ingredient_tag.save
        redirect_to api_ingredient_path(new_ingredient_tag.id)
      else
        render :json => { Status: "KO", Cause: t("ingredient_tag.not_created") }.as_json
      end
    end
  end

  def edit
    find_ingredient_tag
  end

  def update
    find_ingredient_tag
    if @ingredient_tag.update(ingredient_tag_params)
      redirect_to api_ingredients_path
    end
  end

  def destroy
    find_ingredient
    @ingredient_tag.destroy
    redirect_to api_ingredients_path
  end

  private

  def find_ingredient_tag
    @ingredient_tag = ingredient_tag.find(params[:id])
  end

  def ingredient_tag_params
    params.require(:ingredient_tag).permit(:name)
  end
end
