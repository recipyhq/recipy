# rubocop:disable all
class Api::MealPlansController < Api::BaseController

  def index
    verify_user
    skip_policy_scope
    @date_begin = Date.today
    @date_end = Date.today + 6.day
    @day_meals = []

    @shopping_list = ShoppingList.where(:name => "Semaine du #{(@date_begin + 1.day).strftime("%d/%m/%Y")} au #{@date_end.strftime("%d/%m/%Y")}", :user_id => @current_user.id).first

    (@date_begin..@date_end).each do |day|
      @day_meals.push(get_by_date(day))
    end

    @day_meals_json = []

    @day_meals.each do |day_meal|
      @day_meals_json.push({
        id: day_meal.id,
        date: day_meal.date,
        midday_starter_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:midday_starter_recipe_id]).as_json(methods: %i(image_url)),
        midday_dish_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:midday_dish_recipe_id]).as_json(methods: %i(image_url)),
        midday_dessert_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:midday_dessert_recipe_id]).as_json(methods: %i(image_url)),
        evening_starter_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:evening_starter_recipe_id]).as_json(methods: %i(image_url)),
        evening_dish_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:evening_dish_recipe_id]).as_json(methods: %i(image_url)),
        evening_dessert_recipe: Recipe.includes(:image_attachment => :blob).find(day_meal[:evening_dessert_recipe_id]).as_json(methods: %i(image_url))
      })
    end

    values = {
      day_meals: @day_meals_json,
      shopping_list: @shopping_list
    }

    render json: values.as_json
  end

  def get_by_date(date)
    Bullet.enable = false
    monday = prior_monday(date)
    hex = Digest::MD5.hexdigest("#{@current_user.uid}  #{monday}").to_i(16).to_f
    seed = Random.new(hex).rand
    diff_date = (date - monday).to_i

    day_plan = MealPlan.find_or_create_by(date: date, user_id: @current_user.id) do |mp|
      no_ingredients_allergen = Ingredient.have_allergens(@current_user.allergens)
      no_ingredients = @current_user.no_like_ingredients.map { |i| i.id }
      query = Recipe.no_have_ingredients(no_ingredients).no_have_ingredients(no_ingredients_allergen).joins(:recipe_categories).
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

  def verify_user
    if (!params[:user_id])
      render json: {error: 'Vous devez mettre un params user_id pour l\'id de l\'utilisateur'}.as_json
      return
    end

    @current_user = User.where(:id => params[:user_id]).first

    if (!@current_user)
      render json: {error: 'L\'user_id utilisé est incorrect'}.as_json
      return
    end
  end
end
# rubocop:enable all
