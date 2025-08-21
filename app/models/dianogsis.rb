# == Schema Information
#
# Table name: dianogses
#
#  id           :integer          not null, primary key
#  encounter_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_dianogses_on_encounter_id  (encounter_id)
#

class Dianogsis < ApplicationRecord
end
