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

require 'rails_helper'

RSpec.describe Drug, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
