class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :validatable
  devise :database_authenticatable, :registerable,
    :rememberable, :trackable, :omniauthable

  has_many :comedians_users
  has_many :comedians, through: :comedians_users

  geocoded_by :current_sign_in_ip   # can also be an IP address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode, :if => :current_sign_in_ip_changed? # auto-fetch coordinates

  def followComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians << comedian
  end

  def unfollowComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians.where(comedian_id)
  end

  def updateDb(current_user, zip)
    puts self.postal_code

    names = []
    Comedian.all.map { |all| names << all.name }

    names.each do |comedian|
      all_comedians = []

      all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?postal_code='+zip+'&datetime_utc.gt='+Date.today.to_formatted_s+'&datetime_utc.lte='+Date.today.months_since(6)+'&performers.slug='+comedian.downcase.gsub(" ","-"))

      all_comedians.each do |performer|

        performer["events"].each do |event|

          existing_event = Event.find_or_initialize_by(id: :seatgeek_id)
          if event.id != existing_event.seatgeek_id
            Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], postal_code: event["venue"]["postal_code"], seatgeek_id: event["id"]})
          end
        end
      end
    end
  end
end


# def newEvent

#   Comedian.all.each do |comedian|
#     all_comedians = []
#     all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?performers.slug='+comedian.name.downcase.gsub(" ","-"))

#     all_comedians.each do |c|

#       c["events"].each do |event|

#         Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], postal_code: event["venue"]["postal_code"], seatgeek_id: event["id"], comedian_id: comedian.id})
#       end
#     end
#   end
# end
#   end
# end

# existing_event = Event.find_or_initialize_by(seatgeek_id: event_params[:seatgeek_id])
#         if event.id != existing_event.seatgeek_id
