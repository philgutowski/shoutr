class CreateImageSubjects < ActiveRecord::Migration
  def change
    create_table :image_subjects do |t|
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
