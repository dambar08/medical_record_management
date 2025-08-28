# == Schema Information
#
# Table name: drug_ingredients
#
#  id         :integer          not null, primary key
#  drug_id    :integer          not null
#  concept_id :integer
#  units_id   :integer
#  strength   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_drug_ingredients_on_concept_id  (concept_id)
#  index_drug_ingredients_on_drug_id     (drug_id)
#  index_drug_ingredients_on_units_id    (units_id)
#

class DrugIngredient < ApplicationRecord
end
