# == Schema Information
#
# Table name: alert_recipients
#
#  id         :integer          not null, primary key
#  alert_id   :integer
#  user_id    :integer
#  read_at    :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_alert_recipients_on_alert_id  (alert_id)
#  index_alert_recipients_on_user_id   (user_id)
#

class AlertRecipient < ApplicationRecord
  belongs_to :user, inverse_of: :alert_recipients
  belongs_to :alert, inverse_of: :alert_recipients

  scope :unread, -> { where(read_at: nil) }
  scope :read, -> { where.not(read_at: nil) }
end
