class AddStateCityToUser < ActiveRecord::Migration
  def change
  	add_column :users, :state, :string
  	add_column :users, :city, :string
  end
end
