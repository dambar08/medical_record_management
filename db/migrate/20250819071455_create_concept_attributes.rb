class CreateConceptAttributes < ActiveRecord::Migration[8.0]
  def change
    create_table :concept_attributes do |t|
      t.timestamps
    end
  end
end
