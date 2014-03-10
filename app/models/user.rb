class User < ActiveRecord::Base
	validates :name, presence: true, :with => /\A[a-zA-Z0-9]+\Z/i
	validates :email, uniqueness: true
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	has_secure_password
end
