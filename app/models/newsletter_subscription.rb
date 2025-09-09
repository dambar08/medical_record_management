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

class NewsletterSubscription < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
