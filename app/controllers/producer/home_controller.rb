module Producer
  class HomeController < Producer::BaseController
    def index
      skip_policy_scope
    end
  end
end
