class PointOfSalesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    skip_policy_scope
    @point_of_sales = PointOfSale.where(user: current_user).where.not(user: nil).all
  end

  def show
    find_pointofsale_ingredients
    # puts "----###############################"
    # puts @point_of_sale.openning_hours[1]["open"].strftime("%H:%M")
    # puts @point_of_sale.openning_hours[1]["close"].strftime("%H:%M")
    # puts "###############################----"
  end

  def new
    @point_of_sale = PointOfSale.new(address: Address.new)
    @point_of_sale.openning_hours.build
  end

  def create
    new_address_params = point_of_sale_params[:address_attributes]
    new_openning_hours = point_of_sale_params[:openning_hours_attributes]
    @point_of_sale_param.extract!(:address_attributes)
    @point_of_sale_param.extract!(:openning_hours_attributes)
    new_pointofsale = PointOfSale.new(@point_of_sale_param)
    new_pointofsale.user = current_user
    if !new_openning_hours.nil?
      new_openning_hours.each do |hour|
        # puts "#########################"
        # puts hour
        # puts hour.class
        # puts hour[0]
        # puts hour[1]["day"]
        day = hour[1]["day"]
        open = DateTime.new(hour[1]["open(1i)"].to_i,
                            hour[1]["open(2i)"].to_i,
                            hour[1]["open(3i)"].to_i,
                            hour[1]["open(4i)"].to_i,
                            hour[1]["open(5i)"].to_i)
        close = DateTime.new(hour[1]["close(1i)"].to_i,
                             hour[1]["close(2i)"].to_i,
                             hour[1]["close(3i)"].to_i,
                             hour[1]["close(4i)"].to_i,
                             hour[1]["close(5i)"].to_i)
        new_hours = OpenningHour.new(:day => day, :open => open, :close => close)
        puts "############################"
        puts new_hours
        puts new_hours.class
        # puts new_hours[:openning_hour_id]
        puts new_hours[:day]
        puts new_hours[:open]
        puts new_hours[:close]
        new_hours.save
        new_pointofsale.openning_hours << new_hours
      end
    end
    if new_pointofsale.valid?
      new_address = Address.new(new_address_params)
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
    Bullet.enable = false
    find_pointofsale
    new_address_params = point_of_sale_params[:address_attributes]
    new_openning_hours = point_of_sale_params[:openning_hours_attributes]
    puts "############################"
    puts @point_of_sale_param
    puts "---------------------------"
    @point_of_sale_param.extract!(:address_attributes)
    @point_of_sale_param.extract!(:openning_hours_attributes)
    @point_of_sale.openning_hours.destroy_all
    if !new_openning_hours.nil?
      new_openning_hours.each do |hour|
        puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
        puts hour[1]["_destroy"]
        puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
        if hour[1]["_destroy"] == "false"
          day = hour[1]["day"]
          open = DateTime.new(hour[1]["open(1i)"].to_i,
                              hour[1]["open(2i)"].to_i,
                              hour[1]["open(3i)"].to_i,
                              hour[1]["open(4i)"].to_i,
                              hour[1]["open(5i)"].to_i)
          close = DateTime.new(hour[1]["close(1i)"].to_i,
                               hour[1]["close(2i)"].to_i,
                               hour[1]["close(3i)"].to_i,
                               hour[1]["close(4i)"].to_i,
                               hour[1]["close(5i)"].to_i)
          new_hours = OpenningHour.new(:day => day, :open => open, :close => close)
          new_hours.save
          @point_of_sale.openning_hours << new_hours
        end
      end
    end

    if !new_address_params.nil?
      new_address = Address.new(new_address_params)
      new_address.save
      @point_of_sale.address.destroy
      @point_of_sale.address = new_address
    end

    if @point_of_sale.update(@point_of_sale_param)
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

  def find_pointofsale_ingredients
    @point_of_sale = PointOfSale.includes(
      :products => [:ingredient, :price => :quantity_type]
    ).find(params[:id])
  end

  def find_pointofsale
    @point_of_sale = PointOfSale.find(params[:id])
  end

  def point_of_sale_params
    @point_of_sale_param = params.require(:point_of_sale).permit(:name, :description,
                                                                 :market_type,
                                                                 openning_hours_attributes:
                                                                 [
                                                                   :day,
                                                                   :open,
                                                                   :close,
                                                                   :_destroy,
                                                                 ],
                                                                 address_attributes:
                                                                 [
                                                                   :entilted,
                                                                   :city, :zip, :state,
                                                                   :country, :phone,
                                                                 ])
  end
end
