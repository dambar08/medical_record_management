class CreateRelationshipTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :relationship_types do |t|
      t.string :a_is_to_b
      t.string :b_is_to_a
      t.integer :weight, default: 0
      t.boolean :preferred, default: false
      t.timestamps
    end
  end
end
