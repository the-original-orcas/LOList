class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user, index: true
      t.string :provider
      t.string :accesstoken
      t.string :refreshtoken
      t.string :uid
      t.string :name
      t.string :email
      t.string :image
      t.string :urls
      t.string :location
      t.string :state
      t.string :city

      t.timestamps null: false
    end
    add_foreign_key :identities, :users
  end
end
