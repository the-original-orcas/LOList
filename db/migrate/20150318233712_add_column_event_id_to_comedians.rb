class AddColumnEventIdToComedians < ActiveRecord::Migration
  def change
  	add_reference :comedians, :event
  end
end