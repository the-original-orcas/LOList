class AddLatLongToEvents < ActiveRecord::Migration
  def change
  	add_column, :events, :latitude, :decimal
  	add_column, :events, :longtitude, :decimal
  end
end
