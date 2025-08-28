# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ApplicationRecord
  has_many :cohert_memberships
  has_many :coherts, through: :cohert_memberships
end
