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
    @shopping_list = ShoppingList.where(:name => "Semaine du #{(@date_begin + 1.day).strftime("%d/%m/%Y")} au #{@date_end.strftime("%d/%m/%Y")}", :user_id => current_user.id).first

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

    if @day_plan.save
      redirect_to meal_plan_path(@day_plan), flash: { success: t('meal_plan.edit_success') }
    else
      redirect_to meal_plan_path(@day_plan), flash: { error: t('meal_plan.edit_error') }
    end
  end

  def create_list
    date_begin = Date.today + 1.day
    date_end = Date.today + 6.day
    day_meals = []

    (date_begin..date_end).each do |day|
      day_meals.push(get_by_date(day))
    end

    recipes = []

    day_meals.each do |day_meal|
      recipes.push(day_meal.midday_starter_recipe)
      recipes.push(day_meal.midday_dish_recipe)
      recipes.push(day_meal.midday_dessert_recipe)
      recipes.push(day_meal.evening_starter_recipe)
      recipes.push(day_meal.evening_dish_recipe)
      recipes.push(day_meal.evening_dessert_recipe)
    end

    shopping_list = ShoppingList.new(user_id: current_user.id, name: "Semaine du #{date_begin.strftime("%d/%m/%Y")} au #{date_end.strftime("%d/%m/%Y")}")
    shopping_list.save

    recipes.each do |recipe| 
      add_ingredients_to_list(shopping_list.id, recipe)
    end

    redirect_to shopping_list_path(id: shopping_list.id),
                flash: {success: "Les ingrédients de la semaine ont été ajoutés à la liste"}
  end

  def add_ingredients_to_list shopping_list_id, recipe
    previous_bullet = Bullet.enable?
    Bullet.enable = false
    # Temporary disabling Bullet because there's too many exceptions in the method to handle
    if recipe
      shopping_list = ShoppingList.includes(:shopping_list_ingredients => [
        :ingredient,
        :shopping_list_quantity,
      ]).find(shopping_list_id)
      recipe.recipe_ingredients.each do |elem|
        # If ingredient is already in list, just sum the quantities
        if shopping_list.ingredients.find_by(id: elem.ingredient.id)
          sum_shopping_list_quantities(shopping_list, elem)
        else
          create_shopping_list_quantity(shopping_list, elem)
        end
      end
      Bullet.enable = previous_bullet
      shopping_list.save
    end
  end

  def reload_day_plan
    find_my_plan(params[:meal_plan_id])

    date = @day_plan.date.to_date
    monday = prior_monday(date)
    hex = Digest::MD5.hexdigest("#{current_user.uid}  #{monday} #{Time.now}").to_i(16).to_f
    seed = Random.new(hex).rand
    diff_date = (date - monday).to_i

    no_ingredients_allergen = Ingredient.have_allergens(current_user.allergens)
    no_ingredients = current_user.no_like_ingredients.map { |i| i.id }
    no_ingredients_vegan = Ingredient.get_all_where_not_vegan
    no_ingredients_vegetarian = Ingredient.get_all_where_not_vegetarian
    user_is_vegan = current_user.diets.where(name: 'Vegan').count
    user_is_vegetarian = current_user.diets.where(name: 'Végétarien').count

    query = Recipe.no_have_ingredients(no_ingredients)
    .no_have_ingredients(no_ingredients_allergen).joins(:recipe_categories)
    .includes(:image_attachment => :blob).order('RANDOM()')

    if user_is_vegan > 0
      query = query.no_have_ingredients(no_ingredients_vegan)
    end

    if user_is_vegetarian > 0
      query = query.no_have_ingredients(no_ingredients_vegetarian)
    end

    dishes = query.where(:recipe_categories => { :name => "Plat" }).offset(diff_date * 2).limit(2)
    starters = query.where(:recipe_categories => { :name => "Entrée" }).offset(diff_date * 2).limit(2)
    desserts = query.where(:recipe_categories => { :name => "Dessert" }).offset(diff_date * 2).limit(2)

    @day_plan.midday_starter_recipe = starters[0] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0]
    @day_plan.midday_dish_recipe = dishes[0] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0]
    @day_plan.midday_dessert_recipe = desserts[0] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0]
    @day_plan.evening_starter_recipe = starters[1] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0]
    @day_plan.evening_dish_recipe = dishes[1] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0]
    @day_plan.evening_dessert_recipe = desserts[1] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0]

    if @day_plan.save
      redirect_to meal_plan_path(@day_plan), flash: { success: t('meal_plan.reload_success') }
    else
      redirect_to meal_plan_path(@day_plan), flash: { error: t('meal_plan.reload_error') }
    end
  end

  private

  def create_shopping_list_quantity(shopping_list, elem)
    shopping_list.ingredients << elem.ingredient
    if elem.recipe_quantity && elem.recipe_quantity.quantity_type
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        shopping_list_quantity =
          ShoppingListQuantity.create!(:value => elem.recipe_quantity.value,
                                       :quantity_type_id => elem.recipe_quantity.quantity_type.id,
                                       :quantity_type => elem.recipe_quantity.quantity_type)
        last = shopping_list.shopping_list_ingredients.last
        last.shopping_list_quantity = shopping_list_quantity
      end
    end
  end

  def sum_shopping_list_quantities(shopping_list, elem)
    if elem.recipe_quantity && elem.recipe_quantity.quantity_type
      unless is_quantity_type_abstract(elem.recipe_quantity.quantity_type.name)
        ings = ShoppingListIngredient.where(shopping_list_id: shopping_list.id,
                                            ingredient_id: elem.ingredient.id)

        ings.each do |ing|
          if ing.shopping_list_quantity && ing.shopping_list_quantity.quantity_type.id == elem.recipe_quantity.quantity_type.id
            quant = ing.shopping_list_quantity
            quant.value += elem.recipe_quantity.value
            quant.save
            return
          end
        end
        create_shopping_list_quantity(shopping_list, elem)
      end
    end
  end

  def is_quantity_type_abstract(qt)
    [
      "Cuillère(s) à soupe",
      "Cuillère(s) à café",
      "Non défini",
      "Noisette(s)",
      "Brin(s)",
      "Feuille(s)",
    ].include? qt
  end

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
    diff_date = (date - monday).to_i
    
    day_plan = MealPlan.find_or_create_by(date: date, user_id: current_user.id) do |mp|
      no_ingredients_allergen = Ingredient.have_allergens(current_user.allergens)
      no_ingredients = current_user.no_like_ingredients.map { |i| i.id }
      no_ingredients_vegan = Ingredient.get_all_where_not_vegan
      no_ingredients_vegetarian = Ingredient.get_all_where_not_vegetarian
      user_is_vegan = current_user.diets.where(name: 'Vegan').count
      user_is_vegetarian = current_user.diets.where(name: 'Végétarien').count

      query = Recipe.no_have_ingredients(no_ingredients)
      .no_have_ingredients(no_ingredients_allergen).joins(:recipe_categories)
      .includes(:image_attachment => :blob).order('RANDOM()')

      if user_is_vegan > 0
        query = query.no_have_ingredients(no_ingredients_vegan)
      end

      if user_is_vegetarian > 0
        query = query.no_have_ingredients(no_ingredients_vegetarian)
      end

      dishes = query.where(:recipe_categories => { :name => "Plat" }).offset(diff_date * 2).limit(2)
      starters = query.where(:recipe_categories => { :name => "Entrée" }).offset(diff_date * 2).limit(2)
      desserts = query.where(:recipe_categories => { :name => "Dessert" }).offset(diff_date * 2).limit(2)

      mp.midday_starter_recipe = starters[0] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0]
      mp.midday_dish_recipe = dishes[0] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0]
      mp.midday_dessert_recipe = desserts[0] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0]
      mp.evening_starter_recipe = starters[1] || (query.where(:recipe_categories => { :name => "Entrée" }).limit(100).all).shuffle[0]
      mp.evening_dish_recipe = dishes[1] || (query.where(:recipe_categories => { :name => "Plat" }).limit(100).all).shuffle[0]
      mp.evening_dessert_recipe = desserts[1] || (query.where(:recipe_categories => { :name => "Dessert" }).limit(100).all).shuffle[0]
    end

    day_plan
  end

  def prior_monday(date)
    return date if date.monday?
    days_before = (date.wday + 5) % 7 + 1
    date.to_date - days_before
  end
end
