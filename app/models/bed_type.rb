# == Schema Information
#
# Table name: bed_types
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  display_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class BedType < ApplicationRecord
end
