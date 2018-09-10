require 'rails_helper'

RSpec.describe Membership, type: :model do
  it { expect(subject).to belong_to(:user) }
  it { expect(subject).to belong_to(:account) }
end
