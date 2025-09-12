# == Schema Information
#
# Table name: bed_locations
#
#  id          :integer          not null, primary key
#  bed_id      :integer
#  location_id :integer
#  row         :integer
#  column      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_bed_locations_on_bed_id       (bed_id)
#  index_bed_locations_on_location_id  (location_id)
#

require 'rails_helper'

RSpec.describe BedLocation, type: :model do
  it { is_expected.to belong_to(:bed) }
  it { is_expected.to belong_to(:location) }
end
