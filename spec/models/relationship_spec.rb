# == Schema Information
#
# Table name: relationships
#
#  id                   :integer          not null, primary key
#  patient_a_id         :integer          not null
#  relationship_type_id :integer          not null
#  patient_b_id         :integer          not null
#  start_date           :date
#  end_date             :date
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_relationships_on_patient_a_id          (patient_a_id)
#  index_relationships_on_patient_b_id          (patient_b_id)
#  index_relationships_on_relationship_type_id  (relationship_type_id)
#

require 'rails_helper'

RSpec.describe Relationship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
