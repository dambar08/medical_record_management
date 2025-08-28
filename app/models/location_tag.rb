# == Schema Information
#
# Table name: location_tags
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LocationTag < ApplicationRecord
  has_many :location_tag_maps
  has_many :location, through: :location_tag_maps
end
