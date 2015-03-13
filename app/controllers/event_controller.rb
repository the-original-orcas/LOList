class EventController < ApplicationController
	before_filter :authenticate_user!
	# after_create Notification.send_event_notification(user)
  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create
  	Notification.send_event_notification(@event).deliver_now
  end
end
