class IngredientsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @ingredients = Ingredient.all
    respond_to do |format|
      format.html
      format.json do
        render json: @ingredients.as_json
      end
    end
  end

  def show
    find_ingredient
    respond_to do |format|
      format.html
      format.json { render json: @ingredient }
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    new_ingredient = Ingredient.new(ingredient_params)
    if new_ingredient.valid?
      new_ingredient.save
      redirect_to ingredient_path(newIngredient.id), success: "Article modifié avec succès"
    else
      @ingredient = new_ingredient
      render 'new'
    end
  end

  def edit
    find_ingredient
  end

  def update
    find_ingredient
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
      render 'edit'
    end
  end

  def destroy
    find_ingredient
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description)
  end
end
