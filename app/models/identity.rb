class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    identity = find_by(provider: auth.provider, uid: auth.uid)
    identity = create(uid: auth.uid, provider: auth.provider) if identity.nil?
    identity.accesstoken = auth.credentials.token
    identity.refreshtoken = auth.credentials.refresh_token
    identity.name = auth.info.name
    identity.email = auth.info.email
    identity.image = auth.info.image
    identity.location = auth.info.location
    location = identity.location.gsub(/ /, '').split(/,/)
    identity.state = location[1]
    identity.city = location[0]
    identity.urls = (auth.info.urls || "").to_json
    identity.save
    identity
  end
end
