class ProductsController < ApplicationController
  before_action :skip_authorization
  before_action :set_product, only: [:edit, :update, :destroy]

  def new
    @product = Product.new(price: Price.new)
  end

  def create
    product_params
    ingredient_id = @product_params[:ingredient]
    price = @product_params[:price_attributes]
    if price.nil? || price[:value].empty? || price[:quantity_type].empty?
      redirect_to new_product_path, flash: { danger: t("products.missing_price_element") }
    else
      new_price = Price.new(:value => price[:value], :quantity_type_id => price[:quantity_type],
                            :quantity_type => QuantityType.find(price[:quantity_type]))
      if !new_price.save!
        redirect_to new_product_path, flash: { danger: t("products.missing_price_element") }
      end
      @product_params.delete(:price_attributes)
      @product_params.delete(:ingredient)
      @product = Product.new(@product_params)
      @product.price = new_price
      @product.ingredient = Ingredient.find(ingredient_id)
      exist = Product.includes(:ingredient, :price => [:quantity_type]).where(
        prices: {
          value: @product.price.value, quantity_types:
            { name: @product.price.quantity_type.name },
        },
        ingredients: { name: @product.ingredient.name }
      )
      if !exist.empty?
        redirect_to new_product_path, flash: { danger: t("products.already_exist") }
      else
        @product.save!
        redirect_to new_product_path, flash: { success: t("products.created") }
      end
    end
  end

  # GET /products/1/edit
  def edit
  end

  # PATCH/PUT /products/1
  def update
    Bullet.enable = false
    product_params_edit
    ingredient_id = @product_params[:ingredient]
    price = Price.find(@product_params[:price_attributes][:id])
    price.quantity_type = QuantityType.find(@product_params[:price_attributes][:quantity_type])
    price.quantity_type_id = @product_params[:price_attributes][:quantity_type]

    @product_params[:price_attributes].delete(:id)
    @product_params[:price_attributes].delete(:quantity_type)

    unless price.update(@product_params[:price_attributes])
      redirect_to edit_product_path, flash: { danger: t("products.price.not_valid") }
      return
    end

    @product_params.delete(:price_attributes)
    @product_params.delete(:ingredient)
    @product.price = price
    @product.ingredient = Ingredient.find(ingredient_id)

    if @product.update!(@product_params)
      redirect_to edit_product_path, flash: { success: t("products.edited") }
    else
      redirect_to edit_product_path, flash: { danger: t("products.not_edited") }
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    redirect_back fallback_location: new_product_path, flash: { success: t("products.deleted") }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    @product_params = params.require(:product).permit(:ingredient, point_of_sale_ids: [],
                                                                   product_tag_ids: [],
                                                                   price_attributes:
                                                        [
                                                          :value,
                                                          :quantity_type,
                                                        ])
  end

  def product_params_edit
    @product_params = params.require(:product).permit(:ingredient, point_of_sale_ids: [],
                                                                   product_tag_ids: [],
                                                                   price_attributes:
                                                        [
                                                          :value,
                                                          :quantity_type,
                                                          :id,
                                                        ])
  end
end
