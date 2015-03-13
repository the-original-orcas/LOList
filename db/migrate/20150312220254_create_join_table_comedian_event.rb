class CreateJoinTableComedianEvent < ActiveRecord::Migration
  def change
    create_join_table :comedians, :events do |t|
      t.index [:comedian_id, :event_id]
    end
  end
end
