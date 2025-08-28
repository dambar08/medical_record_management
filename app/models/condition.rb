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

class Condition < ApplicationRecord
  CLINICAL_STATUSES = [ "active", "inactive", "history_of", "recurrence", "relapse", "remission", "resolved" ].freeze
  CONDITION_VERIFICATION_STATUSES = [ "provisional", "confirmed" ].freeze

  validates :clinical_status, inclusion: { in: Condition::CLINICAL_STATUSES }
  validates :verification_status, inclusion: { in: Condition::CONDITION_VERIFICATION_STATUSES }

  belongs_to :previous_version, class_name: "Condition", optional: true
  belongs_to :encounter
end
