class Notification < ApplicationMailer
  default :from => 'any_from_address@example.com'

  def send_event_notification(user)
    # @user = user
    @user = user
    events = Event.near(user.postal_code, 1000)

    events.each do |event|
      if user.comedians.include?(event.comedians)
        mail( :to => user.email,
          :subject => "One of your favorite comedians booked a show in your area!" )

      end
    end
  end

  def send_all_notifications
    @users = User.all
    @users.each do |user|
      Notification.send_event_notification(user)
    end
  end

end
