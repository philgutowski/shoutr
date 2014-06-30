class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :body, null: false
      t.integer :user_id, index: true, null: false

      t.timestamps
    end
  end
end
