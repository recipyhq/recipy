class PointOfSalesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    @point_of_sales = PointOfSale.all
  end

  def show
    find_pointofsale
  end

  def new
    @point_of_sale = PointOfSale.new(address: Address.new)
  end

  def create
    new_adress_params = point_of_sale_params[:address]
    @point_of_sale_param.extract!(:address)
    new_pointofsale = PointOfSale.new(@point_of_sale_param)
    if new_pointofsale.valid?
      new_address = Address.new(new_adress_params)
      if new_address.valid?
        new_address.save!
        new_pointofsale.address = new_address
        new_pointofsale.save
        redirect_to point_of_sale_path(new_pointofsale.id),
                    flash: { success: 'point of sale created' }
      else
        redirect_to new_point_of_sale_path, flash: { danger: 'Invalid Address' }
      end
    else
      redirect_to new_point_of_sale_path,
                  flash: { danger: 'Error in the creation of the point of sale' }
    end
  end

  def edit
    find_pointofsale
  end

  def update
    find_pointofsale
    if @point_of_sale.update(point_of_sale_params)
      redirect_to point_of_sale_path, flash: { success: 'Point of sale has been updated' }
    else
      redirect_to edit_point_of_sale_path(@point_of_sale),
                  flash: { danger: 'Failed to update point of sale' }
    end
  end

  def destroy
    find_pointofsale
    @point_of_sale.destroy
    redirect_to point_of_sales_path, flash: { success: 'Point of sale deleted with success' }
  end

  private

  def find_pointofsale
    @point_of_sale = PointOfSale.find(params[:id])
  end

  def point_of_sale_params
    @point_of_sale_param = params.require(:point_of_sale).permit(:name, :description,
                                                                 :market_type,
                                                                 address:
                                                                 [
                                                                   :entilted,
                                                                   :city, :zip, :state,
                                                                   :country, :phone,
                                                                 ])
  end
end
