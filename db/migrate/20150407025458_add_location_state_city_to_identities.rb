class AddLocationStateCityToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :location, :string
    add_column :identities, :state, :string
    add_column :identities, :city, :string
  end
end
