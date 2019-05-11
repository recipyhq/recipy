class Api::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :set_product, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @product = Product.new(price: Price.new)
  end

  def create
    product_params
    ingredient_id = @product_params[:ingredient]
    price = @product_params[:price_attributes]
    if price.nil? || price[:value].empty? || price[:quantity_type].empty?
      render :json => { Status: "KO", Cause: t("products.missing_price_element") }.as_json,
             status: :not_implemented
    else
      new_price = Price.new(:value => price[:value], :quantity_type_id => price[:quantity_type],
                            :quantity_type => QuantityType.find(price[:quantity_type]))
      if !new_price.save!
        render :json => { Status: "KO", Cause: t("products.missing_price_element") }.as_json,
               status: :not_implemented
        return
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
        render :json => { Status: "KO", Cause: t("products.already_exist") }.as_json,
               status: :not_modified
        return
      else
        @product.user = current_user
        @product.save!
        render :json => { Status: "OK", Cause: t("products.created") }.as_json
        return
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
      render :json => { Status: "KO", Cause: t("products.price.not_valid") }.as_json,
             status: :not_implemented
      return
    end

    @product_params.delete(:price_attributes)
    @product_params.delete(:ingredient)
    @product.price = price
    @product.ingredient = Ingredient.find(ingredient_id)

    if @product.update!(@product_params)
      render :json => { Status: "OK", Cause: t("products.edited") }.as_json
    else
      render :json => { Status: "KO", Cause: t("products.not_edited") }.as_json,
             status: :not_modified
    end
  end

  # DELETE /products/1
  def destroy
    @product.price.destroy
    @product.related_product_price.destroy
    @product.destroy
    render :json => { Status: "OK" }.as_json
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render :json => { Status: "KO", Cause: t("products.not_found") }.as_json, status: :not_found
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
