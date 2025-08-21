# == Schema Information
#
# Table name: location_tag_maps
#
#  id              :integer          not null, primary key
#  location_id     :integer          not null
#  location_tag_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_location_tag_maps_on_location_id                      (location_id)
#  index_location_tag_maps_on_location_id_and_location_tag_id  (location_id,location_tag_id) UNIQUE
#  index_location_tag_maps_on_location_tag_id                  (location_tag_id)
#

class LocationTagMap < ApplicationRecord
  validates :location_id, uniuqeness: { scope: :location_tag_id }
  validates :location_id, :location_tag_id, presence: true
end
