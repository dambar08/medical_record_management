class CreateOrderGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :order_groups do |t|
      t.belongs_to :patient, foreign_key: true, null: false
      t.belongs_to :encounter, foreign_key: true, null: false
      t.timestamps
    end
  end
end
