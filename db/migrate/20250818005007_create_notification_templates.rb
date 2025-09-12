class CreateNotificationTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :notification_templates do |t|
      t.string :name, null: false
      t.string :template, null: false
      t.bigint :ordinal, default: 0, null: false
      t.string :sender, null: false
      t.string :recipients, null: false
      t.string :subject, null: false
      t.timestamps
    end
  end
end
