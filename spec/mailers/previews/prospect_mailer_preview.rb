# Preview all emails at http://localhost:3000/rails/mailers/prospect_mailer
class ProspectMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/prospect_mailer/signup_newsletter
  def signup_newsletter
    ProspectMailerMailer.signup_newsletter
  end

end
