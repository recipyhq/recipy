module Producer
  class HomeController < Producer::BaseController
    before_action :skip_authorization
    before_action :authenticate_user!,
                  only: [:new, :create, :edit, :update, :destroy]

    def index
      skip_policy_scope
      @users = User.where(isProducer: true).order(:first_name, :last_name).
        includes(:point_of_sales => [:products => [:ingredient]]).all

      @user_products = {}
      @users.each do |user|
        @user_products[user.email] = []
        user.point_of_sales.each do |point|
          point.products.each do |prod|
            unless prod.ingredient.nil?
              @user_products[user.email].push(prod.ingredient.name)
            end
          end
        end
      end
      # puts "\n\n\n\n products : #{@user_products.inspect}\n\n\n\n\n"
    end

    def show
      @user = User.includes(:point_of_sales => [
        :address, :products => [
          :ingredient, :product_tags, :price => [:quantity_type],
        ],
      ]).find(params[:id])
      @products = {}
      @products_length = 0
      @user.point_of_sales.each do |point|
        @products[point.id] = []
        point.products.each do |prod|
          unless prod.ingredient.nil?
            @products[point.id].push(prod)
            @products_length += 1
          end
        end
      end
      puts "\n\n products : #{@products_length}\n\n\n"
    end

    def new
      @user = current_user
      @user.isProducer = true
      @user.save
    end

    def create
      @user.isProducer = true
      @user.save
    end

    def update
      @user = current_user
      @user.isProducer = true
      @user.bio = params[:user][:bio]
      @user.save!
      redirect_to edit_user_registration_path, flash: { success: t("producer.new.welcome") }
    end
  end
end
