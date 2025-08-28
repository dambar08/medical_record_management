# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  patient_id    :integer          not null
#  location_id   :integer
#  visit_type_id :integer
#  indication_id :integer
#  started_on    :date             not null
#  stopped_on    :date             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_visits_on_indication_id  (indication_id)
#  index_visits_on_location_id    (location_id)
#  index_visits_on_patient_id     (patient_id)
#  index_visits_on_visit_type_id  (visit_type_id)
#

require 'rails_helper'

RSpec.describe Visit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
