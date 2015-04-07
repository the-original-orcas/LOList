class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :validatable
  devise :database_authenticatable, :registerable,
    :rememberable, :trackable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :identities, dependent: :destroy
  has_many :comedians_users
  has_many :comedians, through: :comedians_users

  geocoded_by :current_sign_in_ip   # can also be an IP address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode, :if => :current_sign_in_ip_changed? # auto-fetch coordinates

  def twitter
    identities.where( :provider => "twitter" ).first
  end

  def twitter_client
    @twitter_client ||= Twitter.client( access_token: twitter.accesstoken )
  end

  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end

  def google_oauth2
    identities.where( :provider => "google_oauth2" ).first
  end

  def google_oauth2_client
    if !@google_oauth2_client
      @google_oauth2_client = Google::APIClient.new(:application_name => 'LOList', :application_version => "1.0.0" )
      @google_oauth2_client.authorization.update_token!({:access_token => google_oauth2.accesstoken, :refresh_token => google_oauth2.refreshtoken})
    end
    @google_oauth2_client
  end

  def followComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians << comedian
  end

  def unfollowComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians.where(comedian_id)
  end

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.location = auth.info.location
        # user.state = auth.info.state
        # user.city = auth.info.city
        user.image = auth.info.image
        user.password = Devise.friendly_token[0,20]
      end
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