# == Schema Information
#
# Table name: newsletter_subscriptions
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_newsletter_subscriptions_on_email  (email)
#

require 'rails_helper'

RSpec.describe NewsletterSubscription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
