class CreateEncounters < ActiveRecord::Migration[8.0]
  def change
    create_table :encounters do |t|
      t.belongs_to :patient, null: true, foreign_key: true
      t.belongs_to :visit, null: true, foreign_key: true
      t.datetime :encountered_at, null: false
      t.timestamps
    end
  end
end
