class Notification < ApplicationMailer
  # default :from => 'any_from_address@example.com'

  def send_event_notification(event)
    @event = event

    # if comedian.user.location is within 100 zip code places, show

    @event.comedians.each do |comedian|
      comedian.users.each do |user|
        if @event.near(user.postal_code) == user.location && user.subscribed?
        mail( :to => user.email,
              :subject => "One of your favorite comedians booked a show in your area!" )
      end
    end
  end
end
