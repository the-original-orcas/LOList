class Event < ActiveRecord::Base

  after_create :send_notification
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

end
