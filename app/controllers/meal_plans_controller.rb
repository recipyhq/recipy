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

  def show
    find_my_plan(params[:id])
    query = Recipe.joins(:recipe_categories)
    @dishes = query.where(:recipe_categories =>
                            { :name => "Plat" }).all.map { |v| [v.title, v.id] }.to_a
    @starters = query.where(:recipe_categories =>
                              { :name => "Entrée" }).all.map { |v| [v.title, v.id] }.to_a
    @desserts = query.where(:recipe_categories =>
                              { :name => "Dessert" }).all.map { |v| [v.title, v.id] }.to_a
  end

  def update
    find_my_plan(params[:id])
    @plan_params = plan_params

    @day_plan.midday_starter_recipe = get_recipe("Entrée", plan_params[:midday_starter])
    @day_plan.midday_dish_recipe = get_recipe("Plat", plan_params[:midday_dish])
    @day_plan.midday_dessert_recipe = get_recipe("Dessert", plan_params[:midday_dessert])
    @day_plan.evening_starter_recipe = get_recipe("Entrée", plan_params[:evening_starter])
    @day_plan.evening_dish_recipe = get_recipe("Plat", plan_params[:evening_dish])
    @day_plan.evening_dessert_recipe = get_recipe("Dessert", plan_params[:evening_dessert])

    puts @day_plan.inspect

    if @day_plan.save
      redirect_to meal_plan_path(@day_plan), flash: { success: t('meal_plan.edit_success') }
    else
      redirect_to meal_plan_path(@day_plan), flash: { error: t('meal_plan.edit_error') }
    end
  end

  def reload_day_plan
    find_my_plan(params[:meal_plan_id])

    date = @day_plan.date.to_date
    monday = prior_monday(date)
    hex = Digest::MD5.hexdigest("#{current_user.uid}  #{monday} #{Time.now}").to_i(16).to_f
    seed = Random.new(hex).rand
    puts seed
    diff_date = (date - monday).to_i

    no_ingredients = current_user.no_like_ingredients.map { |i| i.id }
    query = Recipe.no_have_ingredients(no_ingredients).joins(:recipe_categories).
      includes(:image_attachment => :blob).order('RANDOM()').offset(diff_date * 2).limit(2)
    dishes = query.where(:recipe_categories => { :name => "Plat" })
    starters = query.where(:recipe_categories => { :name => "Entrée" })
    desserts = query.where(:recipe_categories => { :name => "Dessert" })

    @day_plan.midday_starter_recipe = starters[0]
    @day_plan.midday_dish_recipe = dishes[0]
    @day_plan.midday_dessert_recipe = desserts[0]
    @day_plan.evening_starter_recipe = starters[1]
    @day_plan.evening_dish_recipe = dishes[1]
    @day_plan.evening_dessert_recipe = desserts[1]

    if @day_plan.save
      redirect_to meal_plan_path(@day_plan), flash: { success: t('meal_plan.reload_success') }
    else
      redirect_to meal_plan_path(@day_plan), flash: { error: t('meal_plan.reload_error') }
    end
  end

  private

  def find_my_plan(id)
    begin
      @day_plan = MealPlan.find(id)
    rescue ActiveRecord::RecordNotFound => e
      puts e
      @day_plan = nil
    end
    if !@day_plan || @day_plan.user != current_user
      redirect_to meal_plans_path, flash: { error: t("meal_plan.not_found") }
    end
    @day_plan
  end

  def get_recipe(type, id)
    begin
      recipe = Recipe.joins(:recipe_categories).
        where(:recipe_categories => { :name => type }).find(id)
    rescue ActiveRecord::RecordNotFound => e
      puts e
      recipe = nil
    end
    recipe
  end

  def plan_params
    params.require(:plan).permit(
      :midday_starter, :midday_dish, :midday_dessert,
      :evening_starter, :evening_dish, :evening_dessert
    )
  end

  def get_by_date(date)
    Bullet.enable = false
    monday = prior_monday(date)
    hex = Digest::MD5.hexdigest("#{current_user.uid}  #{monday}").to_i(16).to_f
    seed = Random.new(hex).rand
    puts seed
    diff_date = (date - monday).to_i

    day_plan = MealPlan.find_or_create_by(date: date, user_id: current_user.id) do |mp|
      no_ingredients = current_user.no_like_ingredients.map { |i| i.id }
      query = Recipe.no_have_ingredients(no_ingredients).joins(:recipe_categories).
        includes(:image_attachment => :blob).order('RANDOM()').offset(diff_date * 2).limit(2)
      dishes = query.where(:recipe_categories => { :name => "Plat" })
      starters = query.where(:recipe_categories => { :name => "Entrée" })
      desserts = query.where(:recipe_categories => { :name => "Dessert" })

      mp.midday_starter_recipe = starters[0]
      mp.midday_dish_recipe = dishes[0]
      mp.midday_dessert_recipe = desserts[0]
      mp.evening_starter_recipe = starters[1]
      mp.evening_dish_recipe = dishes[1]
      mp.evening_dessert_recipe = desserts[1]
    end

    puts day_plan.date.inspect

    day_plan
  end

  def prior_monday(date)
    return date if date.monday?
    days_before = (date.wday + 5) % 7 + 1
    date.to_date - days_before
  end
end
