class ShoppingListsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!

  def index
    skip_policy_scope
    @shopping_lists = current_user.shopping_lists.order(:name)
  end

  def show
    Bullet.enable = false
    find_shopping_list
    if @shopping_list.nil? || @shopping_list == []
      redirect_to shopping_lists_path, flash: {danger: "Liste de courses inconnue"} and return
    end
    ingredients = @shopping_list.shopping_list_ingredients
                    .includes(:ingredient)
                    .order('ingredients.shelf_tag desc')
    @items = {}
    ingredients.each do |x|
      if @items[x.ingredient.shelf_tag].nil?
        @items[x.ingredient.shelf_tag] = []
      end
      @items[x.ingredient.shelf_tag] << x
    end
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def edit
    find_shopping_list_edit
  end

  def create
    @shopping_list_params = shopping_list_params
    new_ingredients = @shopping_list_params[:shopping_list_ingredients_attributes]
    @shopping_list_params.delete(:shopping_list_ingredients_attributes)
    new_shopping_list = ShoppingList.new(@shopping_list_params)
    new_shopping_list.user = current_user
    if new_shopping_list.valid?
      new_ingredients.each do |elem|
        unless new_shopping_list.ingredients.any? {|ingredient| ingredient.id == elem[1].values[0].to_i}
          new_shopping_list.ingredients << Ingredient.find(elem[1].values[0])
          if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
            value = elem[1].values[1]
            shopping_list_quantity = ShoppingListQuantity.create!(:value => value.values[0],
                                                                  :quantity_type =>
                                                                    QuantityType.find(value.values[1]))
            last = new_shopping_list.shopping_list_ingredients.last
            last.shopping_list_quantity = shopping_list_quantity
          end
        end
      end
      new_shopping_list.save
      redirect_to shopping_list_path(new_shopping_list.id), flash: {success: "Grand succès !"}
    else
      redirect_to new_shopping_list_path,
                  flash: {danger: "Erreur lors de la création de la liste de courses"}
    end
  end

  def update
    find_shopping_list_edit
    @shopping_list_params = shopping_list_params
    new_ingredients = @shopping_list_params[:shopping_list_ingredients_attributes]
    @shopping_list_params.delete(:shopping_list_ingredients_attributes)
    @shopping_list.shopping_list_ingredients.destroy_all
    new_ingredients.each do |elem|
      if elem[1].values[2] == "false"
        @shopping_list.ingredients << Ingredient.find(elem[1].values[0])
        if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
          value = elem[1].values[1]
          shopping_list_quantity = ShoppingListQuantity.create!(:value => value.values[0],
                                                   :quantity_type =>
                                                     QuantityType.find(value.values[1]))
          last = @shopping_list.shopping_list_ingredients.last
          last.shopping_list_quantity = shopping_list_quantity
        end
      end
    end
    if @shopping_list.update(@shopping_list_params)
      redirect_to shopping_list_path, flash: {success: "Votre liste a été modifiée avec succés !"}
    else
      redirect_to edit_shopping_list_path(@shopping_list), flash: {danger: "Paramètres invalides"}
    end
  end

  def destroy
    find_shopping_list_edit
    unless @shopping_list.nil?
      @shopping_list.destroy
      redirect_to shopping_lists_path, flash: {success: "Votre liste a été supprimée"}
    end
  end

  private

  def find_shopping_list
    @shopping_list = ShoppingList.includes(:shopping_list_ingredients => [
      :ingredient,
      :shopping_list_quantity => :quantity_type,
    ]).find_by(id: params[:id], user_id: current_user.id)
  end

  def find_shopping_list_edit
    @shopping_list = ShoppingList.find_by(id: params[:id], user_id: current_user.id)
  end

  def shopping_list_params
    params.require(:shopping_list).permit(:name, :shopping_list_ingredients_attributes => {})
  end
end
