class Notification < ApplicationMailer
  default :from => 'comedy@lolist.io'

  def send_event_notification(user)
    @user = user
    @events = Event.near(user.postal_code, 3000)

    @events.each do |event|
      if user.comedians.include?(event.comedians.first)
        @comedian = event.comedians.first
        @event = event
        mail( :to => user.email,
          :subject => "One of your favorite comedians booked a show in your area!" )

      end
    end
  end

  def send_all_notifications
    @users = User.all
    @users.each do |user|
      Notification.send_event_notification(user).deliver_now
    end
  end

end
