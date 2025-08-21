class CreateServiceOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :service_orders do |t|
      t.timestamps
    end
  end
end
