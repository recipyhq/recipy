require 'rails_helper'

RSpec.describe User, type: :model do
  # it { should have_many(:memberships).dependent(:destroy) }

  it do
    should have_one(:cook_account).
      through(:memberships).
      source(:account).
      dependent(:destroy)
  end

  it do
    should have_one(:producer_account).
      through(:memberships).
      source(:account).
      dependent(:destroy)
  end
end
