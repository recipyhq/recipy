require "rails_helper"

RSpec.describe ProspectMailer, type: :mailer do
  describe "signup_newsletter" do
    let(:mail) { ProspectMailer.signup_newsletter }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup newsletter")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
