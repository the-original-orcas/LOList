class CreateComedians < ActiveRecord::Migration
  def change
    create_table :comedians do |t|
      t.text :name
      t.string :image
      t.string :youtube_url

      t.timestamps null: false
    end
  end
end
