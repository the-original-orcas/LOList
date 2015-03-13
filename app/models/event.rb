class Event < ActiveRecord::Base
	has_and_belongs_to_many :comedians, :join_table => :comedians_events
end
