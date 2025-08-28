# == Schema Information
#
# Table name: coherts
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  name        :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_coherts_on_user_id  (user_id)
#

class Cohert < ApplicationRecord
  has_many :memberships, class_name: "CohertMembership"
  has_many :patients, through: :memberships
end
