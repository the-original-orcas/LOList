namespace :get do

  desc "Rake task to get events data"
  task :new_events => [:environment] do

    Comedian.all.each do |comedian|
      all_comedians = []
      date_today = Date.today.to_formatted_s
      date_6months = Date.today.months_since(6).to_formatted_s
      all_comedians << HTTParty.get('http://api.seatgeek.com/2/events?datetime_utc.gt='+date_today+'&datetime_utc.lte='+date_6months+'&performers.slug='+comedian.name.downcase.gsub(" ","-"))

      all_comedians.each do |performer|
        for event in performer["events"]
          sleep 0.5
          # check if Event exists
          if Event.where(:seatgeek_id => event["id"]).exists?
            # check if comedian_id is NOT the same - in which case add comedian to event
            # if existing.comedian_id != comedian.id
            # existing << comedian
          else
            # else create new event
            new_event = Event.create({datetime_local: event["datetime_local"], venue: event["venue"]["name"], price: event["stats"]["lowest_price"], city: event["venue"]["city"], state_code: event["venue"]["state"], postal_code: event["venue"]["postal_code"], seatgeek_id: event["id"], comedian_id: comedian.id, longitude: event["venue"]["location"]["lon"], latitude: event["venue"]["location"]["lat"], url: event["url"], ticket_count: event["stats"]["listing_count"]})
            new_event.comedians << comedian
          end
        end
      end
    end
  Notification.send_all_notifications
  end
  

end
