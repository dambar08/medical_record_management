# == Schema Information
#
# Table name: order_types
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_order_types_on_parent_id  (parent_id)
#

class OrderType < ApplicationRecord
  DRUG_ORDER_TYPE_UUID = "".freeze # TODO
  TEST_ORDER_TYPE_UUID = "".freeze # TODO
  REFERRAL_ORDER_TYPE_UUID = "".freeze # TODO
end
