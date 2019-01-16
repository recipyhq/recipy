class ProspectMailer < ApplicationMailer

  default from: "noreply@recipy.com"
  layout 'mails/devise'


  def signup_newsletter(prospect)
    @prospect = prospect

    mail to: prospect.email, subject: 'Merci de vous êtes inscrit à notre newsletter' do |format|
      format.text
      format.mjml
    end
  end
end
