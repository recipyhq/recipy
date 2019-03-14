class ShoppingListsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @shopping_lists = ShoppingList.all
  end

  def show
    find_shopping_list
  end

  def edit
    find_shopping_list
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def create
    new_shopping_list = ShoppingList.new(shopping_list_params)
    new_shopping_list.user_id = current_user.id
    if new_shopping_list.valid?
      new_shopping_list.save
      redirect_to shopping_list_path(new_shopping_list.id), flash: {success: "Grand succès !"}
    else
      redirect_to new_shopping_list_path, flash: {danger: "Erreur lors de la création de la liste de courses"}
    end
  end

  private

  def find_shopping_list
    @shopping_list = ShoppingList.find(params[:id])
  end

  def shopping_list_params
    params.require(:shopping_list).permit(:name, :ingredient_ids => [])
  end
end

