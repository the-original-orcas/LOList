class Event < ActiveRecord::Base
  after_create :send_notification

  has_and_belongs_to_many :comedians, :join_table => :comedians_events

  # def addToComs
  #   comedian = Comedian.find(self.comedian_id)
  #   comedian.event_id = self.id
  #   comedian.save
  # end

  private

  def send_notification
    @comedian = Comedian.find(self.comedian_id)
    self.comedians << @comedian
    Notification.send_event_notification(self).deliver_now
  end
end
