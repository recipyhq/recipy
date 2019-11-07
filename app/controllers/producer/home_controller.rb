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
            @user_products[user.email].push(prod.ingredient.name)
          end
        end
      end
      # puts "\n\n\n\n#{@user_products.to_s}\n\n\n\n\n"
    end

    def show
      @user = User.find(params[:id])
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

      puts "\n\n\n\n\n\n#{@user.inspect}\n\n\n\n\n\n\n\n"

      redirect_to edit_user_registration_path
    end
  end
end
