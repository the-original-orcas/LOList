class CreateFormUsers < ActiveRecord::Migration
  def change
    create_table :form_users do |t|

      t.timestamps null: false
    end
  end
end
