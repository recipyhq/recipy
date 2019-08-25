class Api::QuantityTypeController < ApplicationController
  def index
    skip_policy_scope
    @quantity_types = QuantityType.all
    render json: @quantity_types.as_json
  end
end
