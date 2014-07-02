class MakeShoutsPolymorphic < ActiveRecord::Migration
  def change
    add_column :shouts, :subject_id, :integer
    add_column :shouts, :subject_type, :string
  end
end
