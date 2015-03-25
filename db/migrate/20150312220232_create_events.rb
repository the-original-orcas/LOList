class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :datetime_local
      t.text :venue
      t.decimal :price

      t.timestamps null: false
    end
  end
end
