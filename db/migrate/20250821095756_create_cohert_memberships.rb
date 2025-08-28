class CreateCohertMemberships < ActiveRecord::Migration[8.0]
  def change
    create_table :cohert_memberships do |t|
      t.belongs_to :cohert, foreign_key: true, null: false
      t.belongs_to :patient, foreign_key: true, null: false
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps
    end

    add_index :cohert_memberships, [ :cohert_id, :patient_id ], unique: true
  end
end
