class LandingController < ApplicationController
  
  def index
  	@user = User.new
  	@fbapi = ENV["FB_API"]
  end

end
