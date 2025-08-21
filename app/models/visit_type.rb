# == Schema Information
#
# Table name: visit_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VisitType < ApplicationRecord
  has_many :visits
end
