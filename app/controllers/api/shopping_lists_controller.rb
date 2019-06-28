class Api::ShoppingListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @shopping_lists = ShoppingList.includes(:ingredients).where(user_id: params[:user_id])

    build_shopping_lists_ingredients

    render json: @shopping_lists_hash
  end

  def show
    find_shopping_list

    shopping_list = @shopping_list.as_json
    shopping_list['ingredients'] = build_shopping_list_ingredients(@shopping_list)

    render json: shopping_list
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def edit
    find_shopping_list
  end

  def create
    new_shopping_list = ShoppingList.new(shopping_list_params)
    if new_shopping_list.valid?
      new_shopping_list.save
      render :json => { Status: "OK", Cause: "Nouvelle liste créée !" }.as_json
    else
      render :json => {
        Status: "KO",
        Cause: "Erreur lors de la création de la liste, veuillez réessayer",
      }.as_json
    end
  end

  def update
    find_shopping_list
    if @shopping_list.update(shopping_list_params)
      render :json => { Status: "OK", Cause: "Votre liste a été modifiée avec succés !" }.as_json
    else
      render :json => { Status: "KO", Cause: "Paramètres invalides" }.as_json
    end
  end

  def destroy
    find_shopping_list
    unless @shopping_list.nil?
      @shopping_list.destroy
      render :json => { Status: "OK", Cause: "Votre liste a bien été supprimée" }.as_json
    end
  end

  private

  # a
  def find_shopping_list
    @shopping_list = ShoppingList.find(params[:id])
  end

  def shopping_list_params
    params.require(:shopping_list).permit(:name, :user_id, :ingredient_ids => [])
  end

  def build_shopping_list_ingredients(shopping_list)
    @tab = []
    if shopping_list.shopping_list_ingredients.nil? || shopping_list.ingredients.nil?
      @tab.push([])
    else
      shopping_list.shopping_list_ingredients.each do |elem|
        if elem.shopping_list_quantity.nil?
          mrg = {
            :ingredient => elem.ingredient,
            :checked => elem.checked,
            :quantity => nil,
          }
        else
          mrg = {
            :ingredient => elem.ingredient,
            :checked => elem.checked,
            :quantity => [
              elem.shopping_list_quantity.value,
              elem.shopping_list_quantity.quantity_type.name,
            ],
          }
        end
        @tab.push(mrg)
      end
    end
    @tab
  end

  def build_shopping_lists_ingredients()
    @shopping_lists_hash = @shopping_lists.as_json

    i = 0
    @shopping_lists.each do |elem|
      @shopping_lists_hash[i]['ingredients'] = build_shopping_list_ingredients(elem)
      i += 1
    end
  end
end
