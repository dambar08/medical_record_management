class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :country
      t.string :postal_code
      t.string :latitude
      t.string :longitude
      t.belongs_to :location, foreign_key: true, null: true
      t.timestamps
    end
  end
end
