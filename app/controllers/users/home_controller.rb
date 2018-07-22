module Users
  class HomeController < Users::BaseController
    def index
      skip_policy_scope
    end
  end
end
