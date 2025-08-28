class CreateConceptAnswers < ActiveRecord::Migration[8.0]
  def change
    create_table :concept_answers do |t|
      t.timestamps
    end
  end
end
