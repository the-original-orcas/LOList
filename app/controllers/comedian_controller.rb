class ComedianController < ApplicationController
	# before_filter :authenticate_user!
  def new
  end

  def create
  end

  def index
  	@comedians = Comedian.all
  	@user = current_user
    @events = Event.all
  	@fbapi = ENV["FB_API"]
  end

  def show
    @comedian = Comedian.find_by_comedian_id
    @events = comedian.events.near(current_user.postal_code)
  end
end
