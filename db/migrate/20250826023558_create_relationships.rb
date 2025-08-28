class CreateRelationships < ActiveRecord::Migration[8.0]
  def change
    create_table :relationships do |t|
      t.references :patient_a, null: false, foreign_key: { to_table: :patients }
      t.references :relationship_type, null: false, foreign_key: true
      t.references :patient_b, null: false, foreign_key: { to_table: :patients }

      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
