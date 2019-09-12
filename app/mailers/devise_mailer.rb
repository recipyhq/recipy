class DeviseMailer < ActionMailer::Base
  default from: 'no-reply@recipy.com'
  layout 'mails/devise'

  def mail(headers)
    super(headers) do |format|
      format.mjml
      format.text
    end
  end
end
