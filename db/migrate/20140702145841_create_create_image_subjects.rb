class CreateCreateImageSubjects < ActiveRecord::Migration
  def change
    create_table :create_image_subjects do |t|
      t.string :url

      t.timestamps
    end
  end
end
