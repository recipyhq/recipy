class Api::IngredientsController < Api::BaseController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @ingredients = Ingredient.all
    render json: @ingredients.as_json(:includes => :ingredient_tags)
  end

  def show
    find_ingredient
    render json: @ingredient.as_json(:includes => :ingredient_tags)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    if (!params[:ingredient].key?(:name) || !params[:ingredient].key?(:description)) ||
      params[:ingredient].keys.length != 3
      render :json => { Status: "KO", Cause: t("ingredient.unrecognized") }.as_json
    else
      new_ingredient = Ingredient.new(ingredient_params)
      if new_ingredient.valid?
        new_ingredient.save
        redirect_to api_ingredient_path(new_ingredient.id)
      else
        render :json => { Status: "KO", Cause: t("ingredient.not_created") }.as_json
      end
    end
  end

  def edit
    find_ingredient
  end

  def update
    find_ingredient
    if @ingredient.update(ingredient_params)
      redirect_to api_ingredients_path
    end
  end

  def destroy
    find_ingredient
    if !@ingredient.nil?
      @ingredient.destroy
      redirect_to api_ingredients_path
    else
      render :json => { Status: "KO", Cause: t("ingredient.unrecognized") }.as_json
    end
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :tags, :image,
                                       :ingredient_tag_ids => [])
  end
end
