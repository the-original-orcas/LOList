class User < ActiveRecord::Base
	has_many :likes
	has_many :comedians, through: :likes

	has_secure_password
end
