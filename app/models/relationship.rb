# == Schema Information
#
# Table name: relationships
#
#  id                   :integer          not null, primary key
#  patient_a_id         :integer          not null
#  relationship_type_id :integer          not null
#  patient_b_id         :integer          not null
#  start_date           :datetime
#  end_date             :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_relationships_on_patient_a_id          (patient_a_id)
#  index_relationships_on_patient_b_id          (patient_b_id)
#  index_relationships_on_relationship_type_id  (relationship_type_id)
#

class Relationship < ApplicationRecord
  belongs_to :patient_a, class_name: "Patient"
  belongs_to :patient_b, class_name: "Patient"
  belongs_to :relationship_type

  validates :patient_a, :patient_b, :relationship_type, presence: true
end
