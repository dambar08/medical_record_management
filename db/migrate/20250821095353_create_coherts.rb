class CreateCoherts < ActiveRecord::Migration[8.0]
  def change
    create_table :coherts do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.string :name, null: false
      t.string :description
      t.timestamps
    end
  end
end
