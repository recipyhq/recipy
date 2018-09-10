require 'rails_helper'

RSpec.describe Producer::Account, type: :model do
  it { expect(subject).to have_one(:membership).dependent(:destroy) }
  it { expect(subject).to have_one(:user).through(:membership) }
end
