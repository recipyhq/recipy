module Producer
  class HomeController < Producer::BaseController
    before_action :skip_authorization
    before_action :authenticate_user!,
                  only: [:new, :create, :edit, :update, :destroy]

    def index
      skip_policy_scope
      @users = User.where(isProducer: true).order(:first_name, :last_name).all
    end

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = current_user
      @user.save
    end

    def create
      @user.isProducer = true
    end

    def patch
      @user = current_user
      @user.isProducer = true
      @user.bio = params[:user][:bio]
      @user.save
      redirect_to edit_user_registration_path, flash: { success: t("producer.new.welcome") }
    end
  end
end
