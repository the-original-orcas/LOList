class CreateJoinTableUserComedian < ActiveRecord::Migration
  def change
    create_join_table :users, :comedians do |t|
      t.index [:user_id, :comedian_id]
    end
  end
end
