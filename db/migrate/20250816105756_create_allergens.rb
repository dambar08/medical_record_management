class CreateAllergens < ActiveRecord::Migration[8.0]
  def change
    create_table :allergens do |t|
      t.belongs_to :patient
      t.belongs_to :encounter
      t.string :comment, limit: 1024
      t.timestamps
    end
  end
end
