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

class BedLocation < ApplicationRecord
  belongs_to :bed
  belongs_to :location
end
