class AddLocationDataToEvents < ActiveRecord::Migration
  def change
    add_column :events, :city, :string
    add_column :events, :state_name, :string
    add_column :events, :state_code, :string
    add_column :events, :time_zone, :string
    add_column :events, :zipcode, :string
  end
end
