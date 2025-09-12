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

require 'rails_helper'

RSpec.describe OrderType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
