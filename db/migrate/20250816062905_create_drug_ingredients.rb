class CreateDrugIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :drug_ingredients do |t|
      t.belongs_to :drug, null: false, foreign_key: true
      t.belongs_to :concept, foreign_key: { to_table: :concepts }
      t.belongs_to :units, foreign_key: { to_table: :concepts }
      t.float :strength
      t.timestamps
    end
  end
end
