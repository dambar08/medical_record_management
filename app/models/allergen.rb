# == Schema Information
#
# Table name: allergens
#
#  id           :integer          not null, primary key
#  patient_id   :integer
#  encounter_id :integer
#  comment      :string(1024)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_allergens_on_encounter_id  (encounter_id)
#  index_allergens_on_patient_id    (patient_id)
#

class Allergen < ApplicationRecord
end
