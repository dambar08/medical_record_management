# == Schema Information
#
# Table name: bed_tag_maps
#
#  id         :integer          not null, primary key
#  bed_id     :integer
#  bed_tag_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bed_tag_maps_on_bed_id      (bed_id)
#  index_bed_tag_maps_on_bed_tag_id  (bed_tag_id)
#

require 'rails_helper'

RSpec.describe BedTagMap, type: :model do
  it { is_expected.to belong_to(:bed) }
  it { is_expected.to belong_to(:bed_tag) }
end
