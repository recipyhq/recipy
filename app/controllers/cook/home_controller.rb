module Cook
  class HomeController < Cook::BaseController
    def index
      skip_policy_scope
      @recipes = Recipe.includes(:image_attachment => :blob).first(4)
      @random_recipe = Recipe.order("RANDOM()").first
    end
  end
end
