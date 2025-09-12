class CreateBedTagMaps < ActiveRecord::Migration[8.0]
  def change
    create_table :bed_tag_maps do |t|
      t.belongs_to :bed
      t.belongs_to :bed_tag
      t.timestamps
    end
  end
end
