class AddColumnSeatgeekIdtoEvent < ActiveRecord::Migration
  def change
  	add_column :events, :seatgeek_id, :integer
  end
end
