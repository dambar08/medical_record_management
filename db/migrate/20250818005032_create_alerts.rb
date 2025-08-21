class CreateAlerts < ActiveRecord::Migration[8.0]
  def change
    create_table :alerts do |t|
      t.text :text
      t.boolean :satisfied_by_any, default: false, null: false
      t.datetime :read_at
      t.datetime :expired_at
      t.timestamps
    end
  end
end
