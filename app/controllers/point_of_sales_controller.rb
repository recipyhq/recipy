class PointOfSalesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    skip_policy_scope
    @point_of_sales = PointOfSale.includes(
      :products => [:ingredient, :price => :quantity_type]
    ).where.not(user: nil).order(:name).all
  end

  def show
    find_pointofsale_ingredients
    @user = @point_of_sale.user
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
        puts open < close
        if !(open < close)
          return redirect_to new_point_of_sale_path,
                             flash: { danger: t('point_of_sale.incorrect_hours') }
        end
        new_hours = OpenningHour.new(:day => day, :open => open, :close => close)
        # puts "############################"
        # puts new_hours
        # puts new_hours.class
        # puts new_hours[:openning_hour_id]
        # puts new_hours[:day]
        # puts new_hours[:open]
        # puts new_hours[:close]
        new_hours.save
        new_pointofsale.openning_hours << new_hours
      end
    end
    if new_pointofsale.valid?
      new_address = Address.new(new_address_params)
      if new_address.valid?
        new_address.save!
        new_pointofsale.address = new_address
        adress_pos = new_pointofsale.address.entilted + ", " + new_pointofsale.address.city
        if Geocoder.search(adress_pos).first
          coordinates = Geocoder.search(adress_pos).first.coordinates
          # puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
          # puts coordinates[0]
          # puts coordinates[1]
          # puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
          if Geocoder.search(adress_pos).first.coordinates
            new_pointofsale.address.latitude = coordinates[0]
            new_pointofsale.address.longitude = coordinates[1]
          end
        else
          redirect_to new_point_of_sale_path, flash: { danger: t('point_of_sale.wrong_address') }
          return
        end
        new_pointofsale.save
        redirect_to point_of_sale_path(new_pointofsale.id),
                    flash: { success: t('point_of_sale.creation_success') }
      else
        redirect_to new_point_of_sale_path, flash: { danger: t('point_of_sale.wrong_address') }
      end
    else
      redirect_to new_point_of_sale_path,
                  flash: { danger: t('point_of_sale.creation_error') }
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
    # puts "############################"
    # puts @point_of_sale_param
    # puts "---------------------------"
    @point_of_sale_param.extract!(:address_attributes)
    @point_of_sale_param.extract!(:openning_hours_attributes)
    @point_of_sale.openning_hours.destroy_all
    if !new_openning_hours.nil?
      new_openning_hours.each do |hour|
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
          if !(open < close)
            return redirect_to edit_point_of_sale_path(@point_of_sale),
                               flash: { danger: t('point_of_sale.incorrect_hours') }
          end
          new_hours = OpenningHour.new(:day => day, :open => open, :close => close)
          new_hours.save
          @point_of_sale.openning_hours << new_hours
        end
      end
    end

    if !new_address_params.nil?
      new_address = Address.new(new_address_params)
      new_address.save
      # @point_of_sale.address.destroy
      # @point_of_sale.address = new_address
    end
    adress_pos = new_address.entilted + ", " + new_address.city
    if Geocoder.search(adress_pos).first
      @point_of_sale.address.destroy
      @point_of_sale.address = new_address
      coordinates = Geocoder.search(adress_pos).first.coordinates
      # puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      # puts coordinates[0]
      # puts coordinates[1]
      # puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      if coordinates
        @point_of_sale.address.latitude = coordinates[0]
        @point_of_sale.address.longitude = coordinates[1]
        @point_of_sale.address.save
      end
    else
      redirect_to edit_point_of_sale_path, flash: { danger: t('point_of_sale.wrong_address') }
      return
    end
    if @point_of_sale.update(@point_of_sale_param)
      redirect_to point_of_sale_path, flash: { success: t('point_of_sale.update_success') }
    else
      redirect_to edit_point_of_sale_path(@point_of_sale),
                  flash: { danger: t('point_of_sale.update_error') }
    end
  end

  def destroy
    find_pointofsale
    @point_of_sale.destroy
    redirect_to show_producer_profile_path(id: current_user.id), flash: { success: t('point_of_sale.delete_success') }
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
