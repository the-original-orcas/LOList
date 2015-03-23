class AddTicketCountToEvent < ActiveRecord::Migration
  def change
    add_column :events, :ticket_count, :integer
  end
end
