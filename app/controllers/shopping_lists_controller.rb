class ShoppingListsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!

  def index
    skip_policy_scope
    @shopping_lists = current_user.shopping_lists
  end

  def show
    find_shopping_list
    if @shopping_list.nil? || @shopping_list == []
      redirect_to shopping_lists_path, flash: { danger: "Liste de courses inconnue" }
    end
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def edit
    find_shopping_list_edit
  end

  def create
    new_shopping_list = ShoppingList.new(shopping_list_params)
    new_shopping_list.user_id = current_user.id
    if new_shopping_list.valid?
      new_shopping_list.save
      redirect_to shopping_list_path(new_shopping_list.id), flash: { success: "Grand succès !" }
    else
      redirect_to new_shopping_list_path,
                  flash: { danger: "Erreur lors de la création de la liste de courses" }
    end
  end

  def update
    find_shopping_list_edit
    if @shopping_list.update(shopping_list_params)
      redirect_to shopping_list_path, flash: { success: "Votre liste a été modifiée avec succés !" }
    else
      redirect_to edit_shopping_list_path(@shopping_list), flash: { danger: "Paramètres invalides" }
    end
  end

  def destroy
    find_shopping_list_edit
    unless @shopping_list.nil?
      @shopping_list.destroy
      redirect_to shopping_lists_path, flash: { success: "Votre liste a été supprimée" }
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
    params.require(:shopping_list).permit(:name, :ingredient_ids => [])
  end
end
