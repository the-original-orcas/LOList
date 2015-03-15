class AddComedianToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :comedian, index: true
    add_foreign_key :users, :comedians
  end
end
