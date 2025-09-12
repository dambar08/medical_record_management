class CreateBeds < ActiveRecord::Migration[8.0]
  def change
    create_table :beds do |t|
      t.string :bed_number
      t.belongs_to :bed_type
      t.string :status
      t.timestamps
    end
  end
end
