class CreateConceptClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :concept_classes do |t|
      t.timestamps
    end
  end
end
