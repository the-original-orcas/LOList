class AddLocationDataToEvents < ActiveRecord::Migration
  def change
    add_column :events, :city, :string
    add_column :events, :address, :string
    add_column :events, :state_code, :string
    add_column :events, :postal_code, :string
    add_column :events, :address, :string
  end
end
