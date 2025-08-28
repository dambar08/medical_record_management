# == Schema Information
#
# Table name: drugs
#
#  id                 :integer          not null, primary key
#  concept_id         :integer
#  maximum_daily_dose :integer          not null
#  minimum_daily_dose :integer          not null
#  strength           :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_drugs_on_concept_id  (concept_id)
#

class Drug < ApplicationRecord
end
