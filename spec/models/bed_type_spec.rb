# == Schema Information
#
# Table name: bed_types
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  display_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe BedType, type: :model do
  it { is_expected.to have_many(:beds) }
end
