class RecipesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    skip_policy_scope
    @recipes = Recipe.includes(:image_attachment => :blob).all
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

  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build
  end

  def create
    @recipe_params = recipe_params
    new_ingredients = @recipe_params[:recipe_ingredients_attributes]
    # puts "********"
    # puts new_ingredients.to_h
    # puts "********"
    if new_ingredients.nil?
      flash[:html_alert] = t('recipe.creation.missing_ingredients')
    else
      steps = @recipe_params[:steps]
      split_steps = steps.split("\r\n")
      @recipe_params[:steps] = split_steps.collect(&:strip)
      @recipe_params.delete(:steps_raw)
      @recipe_params.delete(:recipe_ingredients_attributes)
      # puts "\n\n\n"
      # puts @recipe_params
      new_recipe = Recipe.new(@recipe_params)
      new_ingredients.each do |elem|
        puts "******************"
        puts "ingredient_id =>" + elem[1].values[0]
        puts "ingredient_id =>" + elem[1].values[1].values[0]
        puts "ingredient_id =>" + elem[1].values[1].values[1]
        puts elem[1].values[1].inspect
        puts "******************"
        new_recipe.ingredients << Ingredient.find(elem[1].values[0])
        if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
          recipe_quantity = RecipeQuantity.create!(:value => elem[1].values[1].values[0],
                                                   :quantity_type =>
                                                     QuantityType.find(elem[1].values[1].values[1]))
          last = new_recipe.recipe_ingredients.last
          last.recipe_quantity = recipe_quantity
        end
      end
      puts "\n\n\n"
      puts new_recipe.inspect
      puts new_recipe.recipe_ingredients.inspect
      new_recipe.save
    end

    # new_recipe = Recipe.new(recipe_params)
    # if new_recipe.valid? && new_recipe.image.attached? && new_recipe.difficulty <= 10
    #   if new_recipe.image.blob.content_type.starts_with?('image/')
    #     new_recipe.save
    #     redirect_to recipe_path(new_recipe.id), flash: { success: t("recipe.creation.valid") }
    #   else
    #     redirect_to new_recipe_path, flash: { danger: t("recipe.creation.invalid_image") }
    #   end
    # else
    #   redirect_to new_recipe_path, flash: { danger: t("recipe.creation.invalid") }
    # end
  end

  def edit
    find_recipe_edit
  end

  def update
    find_recipe
    if @recipe.update(recipe_params)
      if @recipe.image.blob.content_type.starts_with?('image/')
        redirect_to recipe_path, flash: { success: t("recipe.edit.valid") }
      else
        redirect_to edit_recipe_path(@recipe), flash: { danger: t("recipe.edit.invalid_image") }
      end
    else
      redirect_to edit_recipe_path(@recipe), flash: { danger: t("recipe.edit.invalid") }
    end
  end

  def destroy
    find_recipe
    @recipe.destroy
    redirect_to recipes_path, flash: { success: t("recipe.destroy.valid") }
  end

  private

  def find_recipe_edit
    @recipe = Recipe.find(params[:id])
  end

  def find_recipe
    @recipe = Recipe.includes(:recipe_ingredients => [
      :ingredient,
      :recipe_quantity => :quantity_type,
    ],
                              :recipe_scores => [:user => [:avatar_attachment]]).find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :score, :steps, :cooking_time, :preparation_time,
                                   :description, :difficulty, :person,
                                   :image, :recipe_ingredients_attributes => {}, :utensil_ids => [])
  end
end
