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

require 'rails_helper'

RSpec.describe Bed, type: :model do
  it { is_expected.to belong_to(:bed_type) }
  it { is_expected.to have_many(:bed_patient_assignments) }
  it { is_expected.to have_many(:bed_tag_maps) }
  it { is_expected.to have_many(:bed_tags).through(:bed_tag_maps) }
  it { is_expected.to have_one(:bed_location) }
end
