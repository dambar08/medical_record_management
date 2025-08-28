# == Schema Information
#
# Table name: coherts
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  name        :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_coherts_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Cohert, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
