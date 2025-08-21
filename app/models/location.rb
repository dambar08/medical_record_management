# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  address1    :string
#  address2    :string
#  address3    :string
#  address4    :string
#  country     :string
#  postal_code :string
#  latitude    :string
#  longitude   :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_locations_on_location_id  (location_id)
#

class Location < ApplicationRecord
  has_many :location_tag_maps
  has_many :tags, through: :location_tag_maps, source: :location_tag
end
