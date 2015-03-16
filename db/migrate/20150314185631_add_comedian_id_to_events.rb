class AddComedianIdToEvents < ActiveRecord::Migration
  def change
  	add_reference :events, :comedian
  end
end
