# == Schema Information
#
# Table name: encounters
#
#  id             :integer          not null, primary key
#  patient_id     :integer
#  visit_id       :integer
#  encountered_at :datetime         not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_encounters_on_patient_id  (patient_id)
#  index_encounters_on_visit_id    (visit_id)
#

class Encounter < ApplicationRecord
end
