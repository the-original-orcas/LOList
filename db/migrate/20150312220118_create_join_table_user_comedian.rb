class CreateJoinTableUserComedian < ActiveRecord::Migration
  def change
    create_table "comedians_users", force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "comedian_id", null: false
  end
  end
end
