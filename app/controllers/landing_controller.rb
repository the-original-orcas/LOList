class LandingController < ApplicationController
 before_action :authenticate_user!  
  def index
  	@user = User.new
  	@fbapi = ENV["FB_API"]
  end

end
