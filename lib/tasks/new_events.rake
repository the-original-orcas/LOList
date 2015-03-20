namespace :get do

  desc "Rake task to get events data"
  task :new_events => [:environment] do

    Comedian.all.each do |comedian|
      all_comedians = []
      date_today = Date.today.to_formatted_s
      date_6months = Date.today.months_since(6).to_formatted_s
      all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?datetime_utc.gt='+date_today+'&datetime_utc.lte='+date_6months+'&performers.slug='+comedian.name.downcase.gsub(" ","-"))

      all_comedians.each do |performer|
        performer["events"].each do |event|
          Event.create({date: event["datetime_local"].split("T")[0], time: event["datetime_local"].split("T")[1], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], postal_code: event["venue"]["postal_code"], seatgeek_id: event["id"], comedian_id: comedian.id, longitude: event["venue"]["location"]["lon"], latitude: event["venue"]["location"]["lat"]})
        end
      end
    end

  end

end
