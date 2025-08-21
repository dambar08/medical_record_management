class CreateConditions < ActiveRecord::Migration[8.0]
  def change
    create_table :conditions do |t|
      t.belongs_to :encounter, foreign_key: true
      t.string :clinical_status, null: false
      t.string :verification_status, null: false
      t.belongs_to :condition, null: true
      t.string :additional_detail
      t.date :onset_date
      t.date :end_date
      t.date :end_reason
      t.timestamps
    end
  end
end
