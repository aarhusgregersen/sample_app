class Passengermailer < ApplicationMailer
	default from: "no-reply@sampleapp.com"

	def welcome_email(user)
		@user = user
		@url = "http://sampleapp.com/login"
		mail(to: @user.email, subject: "Welcome to my awesome site")
	end
end
