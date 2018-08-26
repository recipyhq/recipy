require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:memberships).dependent(:destroy) }

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

  describe '.confirmed?' do
    context 'when unconfirmed' do
      subject(:user) { FactoryBot.create(:user, :unconfirmed) }

      it { expect(user.confirmed?).to be false }
    end

    context 'when confirmed' do
      subject(:user) { FactoryBot.create(:user) }

      it { expect(user.confirmed?).to be true }
    end
  end

  describe '.unconfirmed?' do
    context 'when confirmed' do
      subject(:user) { FactoryBot.create(:user) }

      it { expect(user.unconfirmed?).to be false }
    end

    context 'when unconfirmed' do
      subject(:user) { FactoryBot.create(:user, :unconfirmed) }

      it { expect(user.unconfirmed?).to be true }
    end
  end

  describe '.locked?' do
    context 'when unlocked' do
      subject(:user) { FactoryBot.create(:user) }

      it { expect(user.locked?).to be false }
    end

    context 'when locked' do
      subject(:user) { FactoryBot.create(:user, :locked) }

      it { expect(user.locked?).to be true }
    end
  end

  describe '.unlocked?' do
    context 'when locked' do
      subject(:user) { FactoryBot.create(:user, :locked) }

      it { expect(user.unlocked?).to be false }
    end

    context 'when unlocked' do
      subject(:user) { FactoryBot.create(:user) }

      it { expect(user.unlocked?).to be true }
    end
  end
end
