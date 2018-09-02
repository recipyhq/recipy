require 'rails_helper'

describe ApplicationPolicy do
  subject { described_class }

  let(:user) { FactoryBot.create(:user) }
  let(:administrator) { FactoryBot.create(:administrator) }

  permissions :index? do
    context 'when user class is User' do
      it { expect(subject).not_to permit(user, :record) }
    end

    context 'when user class is Administrator' do
      it { expect(subject).to permit(administrator, :record) }
    end
  end

  permissions :show? do
    context 'when user class is User' do
      it { expect(subject).not_to permit(user, :record) }
    end

    context 'when user class is Administrator' do
      it { expect(subject).to permit(administrator, :record) }
    end
  end

  permissions :create?, :new? do
    context 'when user class is User' do
      it { expect(subject).not_to permit(user, :record) }
    end

    context 'when user class is Administrator' do
      it { expect(subject).to permit(administrator, :record) }
    end
  end

  permissions :update?, :edit? do
    context 'when user class is User' do
      it { expect(subject).not_to permit(user, :record) }
    end

    context 'when user class is Administrator' do
      it { expect(subject).to permit(administrator, :record) }
    end
  end

  permissions :destroy?, :destroy_all? do
    context 'when user class is User' do
      it { expect(subject).not_to permit(user, :record) }
    end

    context 'when user class is Administrator' do
      it { expect(subject).to permit(administrator, :record) }
    end
  end
end
