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
      redirect_to(shopping_lists_path, flash: { danger: "Liste de courses inconnue" }) && return
    end
    ingredients = @shopping_list.shopping_list_ingredients.
      includes(:ingredient).
      order('ingredients.shelf_tag desc')
    @items = {}
    @cpt = 0
    @nearset_pointofsale = {}
    ingredients.each do |x|
      near_test_pointofsale = find_nearest_pointofsale(x.ingredient)
      @nearset_pointofsale[x.ingredient] = []
      if near_test_pointofsale
        @nearset_pointofsale[x.ingredient] << near_test_pointofsale
        @cpt += 1
      end
      if @items[x.ingredient.shelf_tag].nil?
        @items[x.ingredient.shelf_tag] = []
      end
      @items[x.ingredient.shelf_tag] << { :ingredient => x, :point_of_sale => nil }
    end
    # puts "=============================="
    # puts @nearset_pointofsale.empty?
    # puts @nearset_pointofsale.inspect
    # puts "=============================="
  end

  def find_nearest_pointofsale(ingredient)
    @products = Product.includes(:ingredient, :point_of_sales).all
    near_pointofsale = nil
    if current_user.address && current_user.city
      address_user = current_user.address + ", " + current_user.city
      if Geocoder.search(address_user).first
        geocoder_user = Geocoder.search(address_user).first.coordinates
      else
        @cpt = -1
      end
    end
    @products.each do |product|
      # puts "\n\n\n\nprod : #{product.ingredient.name} / #{ingredient.name} \n\n"
      if product.ingredient.id === ingredient.id
        product.point_of_sales.each do |p|
          if is_near(p, geocoder_user)
            near_pointofsale = p
          end
          # puts "\n\n\n\n"
          # puts near_pointofsale.inspect
          # puts "\n\n\n\n"
        end
      end
    end
    near_pointofsale
  end

  def is_near(p, geocoder_user)
    # if Geocoder.search(address_user).first
    # geocoder_user = Geocoder.search(address_user).first.coordinates
    coordinate_pof = [p.address.latitude, p.address.longitude]
    # puts "\n\n\n\n##################"
    # puts p.inspect
    # puts p.address.inspect
    # puts p.address.latitude
    # puts p.address.longitude
    # puts coordinate_pof
    # puts "---------------"
    # puts geocoder_user
    # puts "\n\n\n\n##################"
    if coordinate_pof[0] && geocoder_user
      result1 = coordinate_pof
      result2 = geocoder_user
      (distance(result1, result2) <= 15) ? true : false
    else
      false
    end
  end

  def distance(loc1, loc2)
    rad_per_deg = Math::PI / 180 # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters

    dlat_rad = (loc2[0] - loc1[0]) * rad_per_deg # Delta, converted to rad
    dlon_rad = (loc2[1] - loc1[1]) * rad_per_deg

    lat1_rad, lon1_rad = loc1.map { |i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map { |i| i * rad_per_deg }

    a = Math.sin(dlat_rad / 2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) *
      Math.sin(dlon_rad / 2)**2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    ((rm * c) / 1000).round # Delta in km
  end

  def new
    @shopping_list = ShoppingList.new
  end

  def edit
    find_shopping_list_edit
  end

  def create_shopping_list_quantity(shopping_list, elem)
    shopping_list.ingredients << elem.ingredient
    if elem.shopping_list_quantity
      unless is_quantity_type_abstract(elem.shopping_list_quantity.quantity_type.name)
        shopping_list_quantity =
          ShoppingListQuantity.create!(:value => elem.shopping_list_quantity.value,
                                       :quantity_type_id =>
                                         elem.shopping_list_quantity.quantity_type.id,
                                       :quantity_type => elem.shopping_list_quantity.quantity_type)
        last = shopping_list.shopping_list_ingredients.last
        last.shopping_list_quantity = shopping_list_quantity
      end
    end
  end

  def sum_shopping_list_quantities(shopping_list, elem)
    if elem.shopping_list_quantity
      unless is_quantity_type_abstract(elem.shopping_list_quantity.quantity_type.name)
        ings = ShoppingListIngredient.where(shopping_list_id: shopping_list.id,
                                            ingredient_id: elem.ingredient.id)

        ings.each do |ing|
          elem_quantity_id = elem.shopping_list_quantity.quantity_type.id
          if ing.shopping_list_quantity.quantity_type.id == elem_quantity_id
            quant = ing.shopping_list_quantity
            quant.value += elem.shopping_list_quantity.value
            quant.save
            return
          end
        end
        create_shopping_list_quantity(shopping_list, elem)
      end
    end
  end

  def create
    @shopping_list_params = shopping_list_params
    new_ingredients = @shopping_list_params[:shopping_list_ingredients_attributes]
    @shopping_list_params.delete(:shopping_list_ingredients_attributes)
    new_shopping_list = ShoppingList.new(@shopping_list_params)
    new_shopping_list.user = current_user
    if new_shopping_list.valid?
      if !new_ingredients.nil?
        new_ingredients.each do |elem|
          unless new_shopping_list.ingredients.any? do |ingredient|
            ingredient.id == elem[1].values[0].to_i
          end
            new_shopping_list.ingredients << Ingredient.find(elem[1].values[0])
            if !(elem[1].values[1].values[0] == "" || elem[1].values[1].values[1] == "")
              value = elem[1].values[1]
              # if shopping_list.ingredients.find_by(id: elem.ingredient.id)
              #   sum_shopping_list_quantities(shopping_list, elem)
              # else
              #   create_shopping_list_quantity(shopping_list, elem)
              # end
              shopping_list_quantity = ShoppingListQuantity.
                create!(:value => value.values[0],
                        :quantity_type => QuantityType.find(value.values[1]))
              last = new_shopping_list.shopping_list_ingredients.last
              last.shopping_list_quantity = shopping_list_quantity
            end
          end
        end
      end
      new_shopping_list.save
      redirect_to shopping_list_path(new_shopping_list.id), flash: { success: "Grand succès !" }
    else
      redirect_to new_shopping_list_path,
                  flash: { danger: "Erreur lors de la création de la liste de courses" }
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
          shopping_list_quantity = ShoppingListQuantity.create!(
            :value => value.values[0],
            :quantity_type => QuantityType.find(value.values[1])
          )
          last = @shopping_list.shopping_list_ingredients.last
          last.shopping_list_quantity = shopping_list_quantity
        end
      end
    end
    if @shopping_list.update(@shopping_list_params)
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
    params.require(:shopping_list).permit(:name, :shopping_list_ingredients_attributes => {})
  end
end
