class CreateDrugs < ActiveRecord::Migration[8.0]
  def change
    create_table :drugs do |t|
      t.belongs_to :concept
      t.integer :maximum_daily_dose, null: false
      t.integer :minimum_daily_dose, null: false
      t.float :strength
      t.timestamps
    end
  end
end
