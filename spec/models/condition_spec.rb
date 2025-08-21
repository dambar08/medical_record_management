# == Schema Information
#
# Table name: conditions
#
#  id                  :integer          not null, primary key
#  encounter_id        :integer
#  clinical_status     :string           not null
#  verification_status :string           not null
#  condition_id        :integer
#  additional_detail   :string
#  onset_date          :date
#  end_date            :date
#  end_reason          :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_conditions_on_condition_id  (condition_id)
#  index_conditions_on_encounter_id  (encounter_id)
#

require 'rails_helper'

RSpec.describe Condition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
