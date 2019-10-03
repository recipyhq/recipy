class MealPlansController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  # before_action :set_meal_plan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /meal_plans
  # GET /meal_plans.json
  def index
    skip_policy_scope
    @meal_plans = MealPlan.all
    monday = prior_monday(Date.new(2019, 6, 5))

    hex = (Digest::MD5.hexdigest("#{current_user.uid}  #{monday}").to_i(16)).to_f
    seed = Random.new(hex).rand
    query = Recipe.joins(:recipe_categories).includes(:image_attachment => :blob).order('RANDOM()').limit(14)
    
    Recipe.connection.execute("select setseed(#{seed})")
    dishes = query.where(:recipe_categories => { :name => "Plat" })
    starters = query.where(:recipe_categories => { :name => "Entrée" })
    desserts = query.where(:recipe_categories => { :name => "Dessert" })
    @midday_meals = []
    @evening_meals = []
    @days = [
       "Lundi",
       "Mardi",
       "Mercredi",
       "Jeudi",
       "Vendredi",
       "Samedi",
       "Dimanche"
    ]
    (0..6).each do |n|
      @midday_meals.push({
        :starter => starters[n % starters.count],
        :dish => dishes[n % dishes.count],
        :dessert => desserts[n % desserts.count],
      })
    
      @evening_meals.push({
        :starter => starters[(n + 7)% starters.count],
        :dish => dishes[(n + 7)% dishes.count],
        :dessert => desserts[(n + 7)% desserts.count],
      })
    end
  end

  # # GET /meal_plans/1
  # # GET /meal_plans/1.json
  # def show
  # end

  # # GET /meal_plans/new
  # def new
  #   skip_authorization
  #   @meal_plan = MealPlan.new
  # end

  # # GET /meal_plans/1/edit
  # def edit
  # end

  # # POST /meal_plans
  # # POST /meal_plans.json
  # def create
  #   @meal_plan = MealPlan.new(meal_plan_params)

  #   respond_to do |format|
  #     if @meal_plan.save
  #       format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully created.' }
  #       format.json { render :show, status: :created, location: @meal_plan }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /meal_plans/1
  # # PATCH/PUT /meal_plans/1.json
  # def update
  #   respond_to do |format|
  #     if @meal_plan.update(meal_plan_params)
  #       format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @meal_plan }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /meal_plans/1
  # # DELETE /meal_plans/1.json
  # def destroy
  #   @meal_plan.destroy
  #   respond_to do |format|
  #     format.html { redirect_to meal_plans_url, notice: 'Meal plan was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
  
  def prior_monday(date)
    days_before = (date.wday + 5) % 7 + 1
    date.to_date - days_before
  end

  

  # def set_meal_plan
  #   @meal_plan = MealPlan.find(params[:id])
  # end

  # def meal_plan_params
  #   params.fetch(:meal_plan)
  # end
end
