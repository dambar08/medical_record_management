class CreateDianogses < ActiveRecord::Migration[8.0]
  def change
    create_table :dianogses do |t|
      t.belongs_to :encounter, foreign_key: true
      t.timestamps
    end
  end
end
