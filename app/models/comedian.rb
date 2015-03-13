class Comedian < ActiveRecord::Base
	has_and_belongs_to_many :users, :join_table => :comedians_users
	has_and_belongs_to_many :events, :join_table => :comedians_events
end
