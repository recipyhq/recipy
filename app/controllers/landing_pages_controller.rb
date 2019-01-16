class LandingPagesController < ApplicationController

  before_action :disable_nav


  def index
    skip_policy_scope
    skip_authorization
  end

  def validate
    skip_authorization
  end

  def create
    skip_authorization

    prospect = Prospect.new(landing_page_params)
    if (prospect.valid?)
      prospect.save
      ProspectMailer.signup_newsletter(prospect).deliver
      redirect_to landing_pages_path(anchor: 'joinUs'), flash: { success: "Bienvenue sur Recipy! Nous venons de vous envoyez un email" }
    else
      redirect_to landing_pages_path(anchor: 'joinUs'), flash: { danger: prospect.errors.full_messages }

    end
  end

  private

  def disable_nav
    @disable_nav = true
  end

  def landing_page_params
    params.require(:prospect).permit(:last_name, :first_name, :email)
  end

end

