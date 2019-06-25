class MealPlansController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :set_meal_plan, only: [:show, :edit, :update, :destroy]

  # GET /meal_plans
  # GET /meal_plans.json
  def index
    skip_policy_scope
    @meal_plans = MealPlan.all
  end

  # GET /meal_plans/1
  # GET /meal_plans/1.json
  def show
  end

  # GET /meal_plans/new
  def new
    skip_authorization
    @meal_plan = MealPlan.new
  end

  # GET /meal_plans/1/edit
  def edit
  end

  # POST /meal_plans
  # POST /meal_plans.json
  def create
    @meal_plan = MealPlan.new(meal_plan_params)

    respond_to do |format|
      if @meal_plan.save
        format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully created.' }
        format.json { render :show, status: :created, location: @meal_plan }
      else
        format.html { render :new }
        format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_plans/1
  # PATCH/PUT /meal_plans/1.json
  def update
    respond_to do |format|
      if @meal_plan.update(meal_plan_params)
        format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_plan }
      else
        format.html { render :edit }
        format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_plans/1
  # DELETE /meal_plans/1.json
  def destroy
    @meal_plan.destroy
    respond_to do |format|
      format.html { redirect_to meal_plans_url, notice: 'Meal plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_meal_plan
    @meal_plan = MealPlan.find(params[:id])
  end

  def meal_plan_params
    params.fetch(:meal_plan)
  end
end
