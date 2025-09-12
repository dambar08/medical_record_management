# == Schema Information
#
# Table name: bed_tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe BedTag, type: :model do
  it { is_expected.to have_many(:bed_tag_maps) }
  it { is_expected.to have_many(:beds).through(:bed_tag_maps) }
end
