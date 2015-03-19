namespace :get do
	desc "Rake task to get events data"
	task :new_events => [:environment] do

  	
    names = []

    Comedian.all.map { |all| names << all.name }

      names.each do |comedian|
        all_comedians = []
  
        all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?performers.slug='+comedian.downcase.gsub(" ","-"))

        all_comedians.each do |performer|

          performer["events"].each do |event|
  
            Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], time_zone: event["venue"]["timezone"], zipcode: event["venue"]["postal_code"]})     
          end
        end
      end


  end
end