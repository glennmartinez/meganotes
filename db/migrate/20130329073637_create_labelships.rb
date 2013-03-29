class CreateLabelships < ActiveRecord::Migration
  def change
    create_table :labelships do |t|
      t.integer :note_id
      t.integer :label_id
      t.string :label_name

      t.timestamps
    end
  end
end
