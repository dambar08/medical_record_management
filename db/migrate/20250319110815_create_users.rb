class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username, limit: 50
      t.string :email_address, null: false
      t.string :password_digest, null: false
      t.string :locale, default: "en", null: false
      t.datetime :retired_at
      t.belongs_to :retired_by, foreign_key: { to_table: :users }
      t.string :retire_reason
      t.timestamps
    end
    add_index :users, :email_address, unique: true
    add_index :users, :retired_at, unique: true
  end
end
