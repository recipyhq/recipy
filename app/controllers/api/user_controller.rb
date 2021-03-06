class Api::UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def info
    begin
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end

    render :json => {
      data: {
        id: current_user.id,
        email: current_user.email,
        provider: current_user.provider,
        first_name: current_user.first_name,
        last_name: current_user.last_name,
        uid: current_user.uid,
        allow_password_change: current_user.allow_password_change,
        newsletters: current_user.newsletters,
        isProducer: current_user.isProducer,
        bio: current_user.bio,
        liked_producers: current_user.liked_producers,
        followed_users: current_user.followed_users,
        liked_ingredients: current_user.ingredients,
        unlike_ingredients: current_user.no_like_ingredients,
        allergens: current_user.allergens,
        utensils: current_user.utensils,
        diets: current_user.diets,
        url: current_user.avatar.attached? ? rails_blob_url(current_user.avatar) : nil,
      }.as_json,
    }
  end

  def show_liked_producers
    @producers = current_user.liked_producers
  end

  def update_like_ingredients
    begin
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    current_user.ingredients.destroy_all
    current_user.no_like_ingredients.destroy_all
    current_user.allergens.destroy_all
    current_user.utensils.destroy_all
    params[:liked_ingredients].each do |id|
      ingredient = Ingredient.find(id)
      current_user.ingredients << ingredient
    end
    params[:unliked_ingredients].each do |id|
      ingredient = Ingredient.find(id)
      current_user.no_like_ingredients << ingredient
    end
    params[:allergens].each do |id|
      allergen = AllergenTag.find(id)
      current_user.allergens << allergen
    end
    params[:utensils].each do |id|
      utensil = Utensil.find(id)
      current_user.utensils << utensil
    end
    params[:diets].each do |id|
      diet = Diet.find(id)
      current_user.diets << diet
    end
    render :json => { Status: "OK", Cause: t("users.like.update_success") }.as_json, status: :ok
  end

  def follow_producer
    begin
      producer = User.find(params[:producer_id])
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    current_user.liked_producers << producer
    render :json => { Status: "OK", Cause: t("users.api.follow_ok") }.as_json,
           status: :ok
  end

  def unfollow_producer
    begin
      producer = User.find(params[:producer_id])
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    current_user.liked_producers.destroy(producer)
    render :json => { Status: "OK", Cause: t("users.api.follow_ko") }.as_json,
           status: :ok
  end

  def show_author
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end

    begin
      @notebooks = Notebook.where(
        :user_id => @user.id
      ).order(:title)
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: "Carnet de recettes non trouvé" }.as_json,
             status: :not_found
      return
    end

    begin
      @recipes = Recipe.where(user: @user).where.
        not(user: nil).order(:view => :desc).all
      @recipes_view = 0
      @recipes.each do |r|
        @recipes_view += r.view
      end
      @comments = @user.recipe_scores
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: "Recette non trouvé" }.as_json,
             status: :not_found
      return
    end
    render :json => {
      Status: "OK",
      data: {
        id: @user.id,
        first_name: @user.first_name,
        last_name: @user.last_name,
        email: @user.email,
        url: @user.avatar.attached? ? rails_blob_url(@user.avatar) : nil,
        comments: @comments,
        notebooks: @notebooks,
        recipes_ids: @recipes.ids,
        recipes_view: @recipes_view,
      }.as_json,
    }
  end
end
