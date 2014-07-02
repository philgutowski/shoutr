class CreateTextSubjects < ActiveRecord::Migration
  def change
    create_table :text_subjects do |t|
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
