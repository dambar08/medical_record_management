# == Schema Information
#
# Table name: order_groups
#
#  id           :integer          not null, primary key
#  patient_id   :integer          not null
#  encounter_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_order_groups_on_encounter_id  (encounter_id)
#  index_order_groups_on_patient_id    (patient_id)
#

class OrderGroup < ApplicationRecord
end
