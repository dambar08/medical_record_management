class CreateBedTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :bed_types do |t|
      t.string :name
      t.string :description
      t.string :display_name
      t.timestamps
    end
  end
end
