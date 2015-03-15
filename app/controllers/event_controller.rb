class EventController < ApplicationController

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.create
  end

  def index
  	@events = Event.all 
  end
end
