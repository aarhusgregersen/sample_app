class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@sample-app.com"
  layout 'mailer'
end
