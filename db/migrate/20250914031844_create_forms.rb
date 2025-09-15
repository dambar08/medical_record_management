class CreateForms < ActiveRecord::Migration[8.0]
  def change
    create_table :forms do |t|
      t.timestamps
    end
  end
end
