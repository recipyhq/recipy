class ProductsController < ApplicationController
  before_action :skip_authorization
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new(price: Price.new)
  end

  # GET /products/1/edit
  def edit
  end

  def create
    product_params
    ingredient_id = @product_params[:ingredient]
    price = @product_params[:price_attributes]
    if price.nil? || price[:value].nil? || price[:quantity_type].nil?
      redirect_to new_product_path, flash: { danger: t("products.missing_price_element") }
    else
      new_price = Price.new(:value => price[:value], :quantity_type_id => price[:quantity_type],
                            :quantity_type => QuantityType.find(price[:quantity_type]))
      new_price.save!
      @product_params.delete(:price_attributes)
      @product_params.delete(:ingredient)
      @product = Product.new(@product_params)
      @product.price = new_price
      @product.ingredient = Ingredient.find(ingredient_id)
      @product.save!
      redirect_to new_product_path, flash: { success: t("products.created") }
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    @product_params = params.require(:product).permit(:ingredient, point_of_sale_ids: [],
                                                                   price_attributes:
                                                             [
                                                               :value,
                                                               :quantity_type,
                                                             ])
  end
end
