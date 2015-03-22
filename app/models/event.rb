class Event < ActiveRecord::Base
<<<<<<< HEAD
  # after_create :send_notification
=======

  after_create :send_notification
>>>>>>> 527dfcc6352398f1673a9a9abf907cc5d0081aaf
  after_create :addToComs

  has_and_belongs_to_many :comedians, :join_table => :comedians_events

  def addToComs
    comedian = Comedian.find(self.comedian_id)
    comedian.event_id = self.id
    comedian.save
  end

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

  private

<<<<<<< HEAD
  # def send_notification
  #   users = User.all
  #   users.each do |user|
  #     Notification.send_event_notification(user).deliver_now
  #   end
  # end
=======

  # def addComedian
  #   @comedian = Comedian.find(self.comedian_id)
  #   self.comedians << @comedian
  # end

  # def send_notification
  #   @comedian = Comedian.find(self.comedian_id)
  #   self.comedians << @comedian
  #   Notification.send_event_notification(self).deliver_now
  # end

  def send_notification
    users = User.all
    users.each do |user|
      Notification.send_event_notification(user).deliver_now
    end
  end

>>>>>>> 527dfcc6352398f1673a9a9abf907cc5d0081aaf
end
