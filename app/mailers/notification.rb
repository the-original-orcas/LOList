class Notification < ApplicationMailer
	# default :from => 'any_from_address@example.com'
	
	def send_event_notification(event)
    @event = event
    @comedian = @event.comedians.first

    # if comedian.user.location is within 100 zip code places, show

		@event.comedians.each do |comedian|
			comedian.users.each do |user|  
				mail( :to => user.email,	
				:subject => "One of your favorite comedians booked a show in your area!" )	
			end  
		end 
	end
end
