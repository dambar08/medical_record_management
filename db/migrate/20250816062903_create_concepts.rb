class CreateConcepts < ActiveRecord::Migration[8.0]
  def change
    create_table :concepts do |t|
      t.timestamps
    end
  end
end
