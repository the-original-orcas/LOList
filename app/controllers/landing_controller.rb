class LandingController < ApplicationController

  def index

    @user = User.new


		# names = []

		# Comedian.all.map { |all| names << all.name }

		# names.each do |comedian|
		# 	all_comedians = []
# binding.pry
			# all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?performers.slug='+comedian.downcase.gsub(" ","-"))

			# all_comedians.each do |performer|

			# 	performer["events"].each do |event|

			# 		Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], time_zone: event["venue"]["timezone"], zipcode: event["venue"]["postal_code"]})
					# 	Additional paramerters
					# address: event["venue"]["address"]
					# latitude: event["venue"]["location"]["lat"] 
					# longtitude: event["venue"]["location"]["lon"] 
			
		# 		end
		# 	end
		# end


  	@fbapi = ENV["FB_API"]

  end
  	

end




