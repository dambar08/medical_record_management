class CreateAlertRecipients < ActiveRecord::Migration[8.0]
  def change
    create_table :alert_recipients do |t|
      t.belongs_to :alert
      t.belongs_to :user
      t.datetime :read_at
      t.timestamps
    end
  end
end
