class Notification < ApplicationMailer
  default :from => 'any_from_address@example.com'

  def send_event_notification(event)
    @event = event
    
    

    @event.comedians.each do |comedian|
      comedian.users.each do |user|
        binding.pry
        # if @event.location == user.location && user.subscribed?
        # mail( :to => user.email,
              # :subject => "One of your favorite comedians booked a show in your area!" )
      end
    end
  end
end
