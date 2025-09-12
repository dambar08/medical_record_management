class CreateBedPatientAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :bed_patient_assignments do |t|
      t.belongs_to :bed
      t.belongs_to :patient
      t.belongs_to :encounter
      t.belongs_to :start_at
      t.belongs_to :end_at
      t.timestamps
    end
  end
end
