class ComediansUser < ActiveRecord::Base
	belongs_to :user
	belongs_to :comedian
end