# == Schema Information
#
# Table name: cohert_memberships
#
#  id         :integer          not null, primary key
#  cohert_id  :integer          not null
#  patient_id :integer          not null
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cohert_memberships_on_cohert_id                 (cohert_id)
#  index_cohert_memberships_on_cohert_id_and_patient_id  (cohert_id,patient_id) UNIQUE
#  index_cohert_memberships_on_patient_id                (patient_id)
#

require 'rails_helper'

RSpec.describe CohertMembership, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
