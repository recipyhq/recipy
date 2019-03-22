module Cook
  class HomeController < Cook::BaseController
    def index
      skip_policy_scope
      @recipes = Recipe.includes(:image_attachment => :blob).first(2)
    end
  end
end
