class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@recipy.com'
  layout 'mailer'
end
