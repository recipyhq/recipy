class DeviseMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mails/devise'

  def mail(headers)
    super(headers) do |format|
      format.mjml
      format.text
    end
  end
end
