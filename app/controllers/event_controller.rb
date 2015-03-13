class EventController < ApplicationController
	before_filter :authenticate_user!
	# after_create Notification.send_event_notification(user)
  def new
  end

  def create
  end
end
