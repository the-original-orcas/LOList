class Notification < ApplicationMailer
	# default :from => 'any_from_address@example.com'
	
	def send_event_notification(event)
    @event = event
    @comedian = @event.comedian
    @event.comedian.users.each do |user|
			mail( :to => user.email,	
			:subject => "#{@comedian} booked a show in your area!" )	
    end
   end
end
