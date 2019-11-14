class Users::BaseController < ApplicationController
  # skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.image.attach(params[:image])
    if @user.update(user_params)
      redirect_to edit_user_registration
    end
  end

  def edit_preferences
    @user = current_user
  end

  def update_like_ingredients
    unless current_user.nil?
      @user = current_user
      @params = like_params
      @user.ingredients.destroy_all
      @user.no_like_ingredients.destroy_all
      @user.allergens.destroy_all
      @user.utensils.destroy_all

      new_like = @params[:ingredients].drop(1).reject(&:empty?)
      new_unlike = @params[:no_like_ingredients].drop(1).reject(&:empty?)
      new_allergens = @params[:allergens].drop(1).reject(&:empty?)
      new_utensils = @params[:utensils].drop(1).reject(&:empty?)

      new_like.each do |elem|
        ingredient = Ingredient.find(elem)
        @user.ingredients << ingredient
      end
      new_unlike.each do |elem|
        ingredient = Ingredient.find(elem)
        @user.no_like_ingredients << ingredient
      end
      new_allergens.each do |elem|
        allergen = AllergenTag.find(elem)
        @user.allergens << allergen
      end
      new_utensils.each do |elem|
        utensil = Utensil.find(elem)
        @user.utensils << utensil
      end
      redirect_to edit_preferences_path, flash: { success: t("users.like.update_success") }
      return
    end
    redirect_to new_user_session_path, flash: { error: t("users.like.update_fail") }
  end

  def show_liked_producers
    @producers = current_user.liked_producers
    # redirect_to follow_producer_path
  end

  def follow_producer
    begin
      user = User.find(params[:user][:user_id])
    rescue ActiveRecord::RecordNotFound
      return
    end
    if user_signed_in?
      current_user.liked_producers << user
      redirect_to show_producer_path user.id
    end
  end

  def unfollow_producer
    begin
      user = User.find(params[:user][:user_id])
    rescue ActiveRecord::RecordNotFound
      return
    end
    if user_signed_in?
      current_user.liked_producers.destroy(user)
      redirect_to liked_producers_path
    end
  end

  def show_author
    find_user_recipe_scores
    @notebooks = Notebook.includes(:image_attachment => :blob).where(
      :user_id => @user.id
    ).order(:title)
    @recipes = Recipe.where(user: @user).where.
      not(user: nil).order(:view => :desc).all.with_attached_image
    @recipes_view = 0
    @recipes.each do |r|
      @recipes_view += r.view
    end
    @comments = @user.recipe_scores.last(4)
  end

  private

  def like_params
    params.require(:like).permit(:ingredients => [], :no_like_ingredients => [], :allergens => [], :utensils => [])
  end

  def user_params
    params.require(:user).permit(:id, :email, :encrypted_password, :image)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_user_recipe_scores
    @user = User.includes(:recipe_scores => [:recipe]).find(params[:id])
  end
end
