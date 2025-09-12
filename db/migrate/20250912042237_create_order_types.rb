class CreateOrderTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :order_types do |t|
      t.belongs_to :parent, foreign_key: { to_table: :order_types }
      t.timestamps
    end
  end
end
