class DeviseMailer < ActionMailer::Base
    default from: 'from@example.com'
    layout 'mails/devise'
end
  