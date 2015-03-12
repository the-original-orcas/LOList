class Notification < ApplicationMailer
	# default :from => 'any_from_address@example.com'
	
	def send_event_notification(user)
    @user = user
    # If user's comedian books a new show in their area,
			mail( :to => @user.email,	
			:subject => "One of your favorite Comedians booked a show in your area" )
   end

end
