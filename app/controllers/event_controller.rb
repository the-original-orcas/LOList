class EventController < ApplicationController
	before_filter :authenticate_user!
	# after_create Notification.send_event_notification(user)
  def new
  	@event = Event.new
  	Notification.send_event_notification(@event)
  end

  def create
  end
end
