# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  patient_id        :integer
#  encounter_id      :integer
#  previous_order_id :integer
#  order_reason_id   :integer
#  action            :string
#  fulfiller_status  :string
#  activated_on      :date
#  instructions      :string
#  auto_expire_on    :date
#  order_number      :string
#  scheduled_on      :date
#  stopped_on        :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_orders_on_encounter_id       (encounter_id)
#  index_orders_on_order_reason_id    (order_reason_id)
#  index_orders_on_patient_id         (patient_id)
#  index_orders_on_previous_order_id  (previous_order_id)
#

class Order < ApplicationRecord
  ALL_URGENCIES = [ "routine", "stat", "on_scheduled_date" ]
  ALL_ACTIONS = [ "new", "revise", "discontinue", "renew" ]
  ALL_FULFILLER_STATUSES = [ "received", "in_progress", "exception", "on_hold", "declined", "completed" ]

  belongs_to :patient
end
