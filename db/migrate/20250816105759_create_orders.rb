class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :encounter, foreign_key: true
      t.belongs_to :previous_order, foreign_key: { to_table: :orders }
      t.belongs_to :order_reason, foreign_key: { to_table: :orders }
      t.string :action
      t.string :fulfiller_status
      t.date :activated_on
      t.string :instructions
      t.date :auto_expire_on
      t.string :order_number
      t.date :scheduled_on
      t.date :stopped_on
      t.timestamps
    end
  end
end
