require 'rails_helper'

describe ActiveAdmin::PagePolicy do
  subject { described_class }

  let(:administrator) { FactoryBot.create(:administrator) }

  permissions :show? do
    it { expect(subject).to permit(administrator, :page) }
  end
end
