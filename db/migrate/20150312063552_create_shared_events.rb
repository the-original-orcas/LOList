class CreateSharedEvents < ActiveRecord::Migration
  def change
    create_table :shared_events do |t|
      t.references :comedian, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :shared_events, :comedians
    add_foreign_key :shared_events, :events
  end
end
