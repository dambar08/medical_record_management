# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email_address   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email_address  (email_address) UNIQUE
#

class User < ApplicationRecord
  include Retirable

  rolify strict: true
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :alert_recipients, inverse_of: :user
  has_many :alerts, through: :alert_recipients, inverse_of: :user

  validates :username, length: { minimum: 3, maximum: 50 }, allow_blank: true

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
