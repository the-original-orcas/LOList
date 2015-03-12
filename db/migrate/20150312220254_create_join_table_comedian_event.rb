class CreateJoinTableComedianEvent < ActiveRecord::Migration
  def change
    create_join_table :comedians, :events do |t|
      # t.index [:comedian_id, :event_id]
      # t.index [:event_id, :comedian_id]
    end
  end
end
