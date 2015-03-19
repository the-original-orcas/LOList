class AddLatLongToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :lat, :decimal
  	add_column :events, :lon, :decimal
  end
end
