class CreateNotificationTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :notification_templates do |t|
      t.timestamps
    end
  end
end
