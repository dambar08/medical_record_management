class CreateVisits < ActiveRecord::Migration[8.0]
  def change
    create_table :visits do |t|
      t.belongs_to :patient, foreign_key: true, null: false
      t.belongs_to :location, foreign_key: true
      t.belongs_to :visit_type, foreign_key: true
      t.belongs_to :indication, foreign_key: { to_table: :concepts }
      t.date :started_on, null: false
      t.date :stopped_on, null: false
      t.timestamps
    end
  end
end
