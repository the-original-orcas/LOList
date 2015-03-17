class AddZipcodetoUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :state_name, :string
    add_column :users, :state_code, :string
    add_column :users, :time_zone, :string
    add_column :users, :zipcode, :string
  end
end
