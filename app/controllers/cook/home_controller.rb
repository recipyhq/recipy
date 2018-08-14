module Cook
  class HomeController < Cook::BaseController
    def index
      skip_policy_scope
    end
  end
end
