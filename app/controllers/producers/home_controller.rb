module Producers
  class HomeController < Producers::BaseController
    def index
      skip_policy_scope
    end
  end
end
