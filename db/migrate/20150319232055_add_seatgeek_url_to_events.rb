class AddSeatgeekUrlToEvents < ActiveRecord::Migration
  def change
  	add_column, :url, :text
  end
end
