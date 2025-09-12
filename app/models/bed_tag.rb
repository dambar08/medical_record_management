# == Schema Information
#
# Table name: bed_tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BedTag < ApplicationRecord
  has_many :bed_tag_maps
  has_many :beds, through: :bed_tag_maps
end
