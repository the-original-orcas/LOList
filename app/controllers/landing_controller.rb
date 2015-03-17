class LandingController < ApplicationController

  def index

    @user = User.new
    # 		names = []

    # 		Comedian.all.map { |all| names << all.name }

    # 		names.each do |comedian|
    # 			all_comedians = []
    # # binding.pry
    # 			all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?performers.slug='+comedian.downcase.gsub(" ","-"))

    # 			all_comedians.each do |performer|

    # 				performer["events"].each do |event|

    # 					Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"]})

    # 				end
    # 			end
    # 		end

    # binding.pry


  	@fbapi = ENV["FB_API"]

	end
end
