class LandingPagesController < InheritedResources::Base

  def index
    skip_policy_scope
    skip_authorization
    @landing_page = LandingPage.new()
  end

  def validate
    skip_authorization
  end

  def new
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
    if (name.nil?) || (firstname.nil?) || (email.nil?)
      redirect_to landing_pages_path(anchor: 'joinUs'), flash: { danger: "Les champs ne doivent pas être vide" }
      return
    end

    landing_page = LandingPage.new(landing_page_params)
    if (landing_page.valid?)
      landing_page.save
      redirect_to landing_pages_path(anchor: 'joinUs'), flash: { success: "Bienvenu sur Recipy!" }
    else
      @landing_page = landing_page
      redirect_to landing_pages_path(anchor: 'joinUs'), flash: { danger: "Oh boy!" }

    end
  end

  private

  def landing_page_params
    params.require(:landing_page).permit(:name, :firstname, :email)
  end

end

