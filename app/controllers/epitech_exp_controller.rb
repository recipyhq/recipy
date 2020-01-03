class EpitechExpController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    skip_authorization
    @disable_nav = true
  end

  def create
    @date_begin = Date.today
    @date_end = Date.today + 6.day
    @day_meals = []
    infos = create_plan_params

    if infos[:email].match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      (@date_begin..@date_end).each do |day|
        @day_meals.push(get_by_date(day, infos))
      end

      EipExpMailer.meal_plan(@day_meals, infos[:email]).deliver_later
      redirect_to epiexp_index_path, flash: { success: 'Votre planning vous a bien été envoyé par mail' }
    else
      redirect_to epiexp_index_path(params: infos), flash: { error: 'L\'adresse email n\'est pas correct' }
    end
  end

  def get_by_date(date, infos)
    Bullet.enable = false
    monday = prior_monday(date)
    hex = Digest::MD5.hexdigest("#{infos[:email]}  #{monday}").to_i(16).to_f
    seed = Random.new(hex).rand
    diff_date = (date - monday).to_i
    allergens = AllergenTag.where(id: infos[:allergens]).all
    no_ingredients = Ingredient.where(id: infos[:no_like_ingredients])

    no_ingredients_vegan = Ingredient.get_all_where_not_vegan
    no_ingredients_vegetarian = Ingredient.get_all_where_not_vegetarian

    no_ingredients_allergen = Ingredient.have_allergens(allergens)
    query = Recipe.joins(:recipe_categories).no_have_ingredients(no_ingredients).no_have_ingredients(no_ingredients_allergen).order('RANDOM()')

    if infos[:diet] == 'vegan'
      query = query.no_have_ingredients(no_ingredients_vegan)
    end

    if infos[:diet] == 'vegetarian'
      query = query.no_have_ingredients(no_ingredients_vegetarian)
    end
    
    dishes = query.where(:recipe_categories => { :name => "Plat" }).offset(diff_date * 2).limit(2)
    starters = query.where(:recipe_categories => { :name => "Entrée" }).offset(diff_date * 2).limit(2)
    desserts = query.where(:recipe_categories => { :name => "Dessert" }).offset(diff_date * 2).limit(2)
    
    day_plan = {
      day: t('date.day_names')[date.wday],
      midday_starter_recipe: starters[0] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0],
      midday_dish_recipe: dishes[0] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0],
      midday_dessert_recipe: desserts[0] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0],
      evening_starter_recipe: starters[1] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0],
      evening_dish_recipe: dishes[1] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0],
      evening_dessert_recipe: desserts[1] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0],
    }

    puts no_ingredients.inspect

    day_plan
  end

  def prior_monday(date)
    return date if date.monday?
    days_before = (date.wday + 5) % 7 + 1
    date.to_date - days_before
  end

  def create_plan_params
    params.require(:meal_plan_infos).permit(
      :email, :diet, :allergens => [], :no_like_ingredients => []
    )
  end
end
