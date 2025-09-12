# == Schema Information
#
# Table name: beds
#
#  id          :integer          not null, primary key
#  bed_number  :string
#  bed_type_id :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_beds_on_bed_type_id  (bed_type_id)
#

class Bed < ApplicationRecord
  STATUSES = ["available","occupied"]


  has_one :bed_location
  belongs_to :bed_type

  has_many :bed_patient_assignments
  has_many :bed_tag_maps
  has_many :bed_tags, through: :bed_tag_maps

  validates :status, inclusion: { in: STATUSES }

  STATUSES.each do |status|
    define_method("#{status}?") do
      self.status == status
    end

    scope status.to_sym, -> { where(status: status) }
  end

end
