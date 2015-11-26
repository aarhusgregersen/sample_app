class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: { maximum: 20 }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
	validates :password, length: { minimum: 6 }

	has_secure_password
end
