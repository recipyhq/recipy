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

    name = landing_page_params['name']
    firstname = landing_page_params['firstname']
    email = landing_page_params['email']

    name.inspect
    firstname.inspect
    email.inspect
 

    prospect = Prospect.new(landing_page_params)
    if (prospect.valid?)
      prospect.save
      redirect_to landing_pages_path(anchor: 'join-us'), flash: { success: "Merci, nous vous contacterons dès qu'il y aura des nouveautés." }
    else
      redirect_to landing_pages_path(anchor: 'join-us'), flash: { danger: prospect.errors.full_messages.to_sentence }
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

