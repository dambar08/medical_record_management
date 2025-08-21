# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  var        :string           not null
#  value      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_settings_on_var  (var) UNIQUE
#

require 'rails_helper'

RSpec.describe Setting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
