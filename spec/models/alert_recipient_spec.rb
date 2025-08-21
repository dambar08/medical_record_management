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

require 'rails_helper'

RSpec.describe AlertRecipient, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
