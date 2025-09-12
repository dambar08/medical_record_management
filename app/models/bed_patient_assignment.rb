# == Schema Information
#
# Table name: bed_patient_assignments
#
#  id           :integer          not null, primary key
#  bed_id       :integer
#  patient_id   :integer
#  encounter_id :integer
#  start_at_id  :integer
#  end_at_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_bed_patient_assignments_on_bed_id        (bed_id)
#  index_bed_patient_assignments_on_encounter_id  (encounter_id)
#  index_bed_patient_assignments_on_end_at_id     (end_at_id)
#  index_bed_patient_assignments_on_patient_id    (patient_id)
#  index_bed_patient_assignments_on_start_at_id   (start_at_id)
#

class BedPatientAssignment < ApplicationRecord
end
