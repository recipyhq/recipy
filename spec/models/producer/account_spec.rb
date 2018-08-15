require 'rails_helper'

RSpec.describe Producer::Account, type: :model do
  it { should have_one(:membership).dependent(:destroy) }
  it { should have_one(:user).through(:membership) }
end
