class MealPlansController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  # before_action :set_meal_plan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /meal_plans
  # GET /meal_plans.json
  def index
    skip_policy_scope
    @date_begin = Date.today
    @date_end = Date.today + 6.day
    @day_meals = []

    (@date_begin..@date_end).each do |day|
      @day_meals.push(get_by_date(day))
    end
  end

  private

  def get_by_date(date)
    Bullet.enable = false
    monday = prior_monday(date)
    hex = (Digest::MD5.hexdigest("#{current_user.uid}  #{monday}").to_i(16)).to_f
    seed = Random.new(hex).rand
    diff_date = (date - monday).to_i
    
    day_plan = MealPlan.find_or_create_by(date: date, user_id: current_user.id) do |mp|
      no_ingredients = current_user.no_like_ingredients.map { |i| i.id }
      query = Recipe.no_have_ingredients(no_ingredients).joins(:recipe_categories).includes(:image_attachment => :blob).order('RANDOM()').offset(diff_date * 2).limit(2)
      dishes = query.where(:recipe_categories => { :name => "Plat" })
      starters = query.where(:recipe_categories => { :name => "Entrée" })
      desserts = query.where(:recipe_categories => { :name => "Dessert" })

      mp.midday_starter_recipe = starters[0];
      mp.midday_dish_recipe = dishes[0];
      mp.midday_dessert_recipe = desserts[0];
      mp.evening_starter_recipe = starters[1];
      mp.evening_dish_recipe = dishes[1];
      mp.evening_dessert_recipe = desserts[1];
      
    end
  end
  
  def prior_monday(date)
    return date if date.monday?
    days_before = (date.wday + 5) % 7 + 1
    date.to_date - days_before
  end
end
