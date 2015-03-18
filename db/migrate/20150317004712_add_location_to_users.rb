class AddLocationtoUsers < ActiveRecord::Migration
  def change
    add_column :users, :postal_code, :string
  end
end
