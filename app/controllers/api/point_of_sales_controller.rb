class Api::PointOfSalesController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    begin
      user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: "invalid user" }.as_json, status: :not_found
      return
    end
    @point_of_sales = PointOfSale.includes(:address, :products,
                                           :openning_hours).where(:user => user).all
    render json: @point_of_sales.as_json(:include => [:address, :products, :openning_hours])
  end

  def show
    begin
      User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: "invalid user" }.as_json, status: :not_found
      return
    end
    find_pointofsale
    render json: @point_of_sale.as_json(:include => [:address, :products, :openning_hours])
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
        redirect_to api_point_of_sale_path(new_pointofsale.id)
      else
        render :json => { Status: "KO", Cause: t('invalid address') }.as_json
      end
    else
      render :json => { Status: "KO", Cause: t('error invalid point of sale') }.as_json
    end
  end

  def edit
    find_pointofsale
  end

  def update
    find_pointofsale
    adress_params = point_of_sale_params[:address]
    @point_of_sale_param.extract!(:address)
    pointofsale = @point_of_sale_param
    if @point_of_sale.address.update(adress_params) && @point_of_sale.update(pointofsale)
      redirect_to api_point_of_sale_path
    else
      render :json => { Status: "KO", Cause: t('fail to update point of sale') }.as_json
    end
  end

  def destroy
    find_pointofsale
    @point_of_sale.destroy
    redirect_to api_point_of_sales_path
  end

  private

  def find_pointofsale
    id = params[:id]
    user = User.find(params[:user_id])
    @point_of_sale = PointOfSale.where(:id => id).where(:user => user)
  end

  def point_of_sale_params
    @point_of_sale_param = params.require(:point_of_sale).permit(:name, :description,
                                                                 :market_type,
                                                                 address:
                                                                   [
                                                                     :entilted, :city, :zip,
                                                                     :state, :country, :phone,
                                                                   ])
  end
end
