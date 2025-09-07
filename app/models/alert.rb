class Alert < ApplicationRecord
  has_paper_trail

  scope :expired, ->(time = Time.current) { where("expired_at < ?", time) }
  scope :unexpired, ->(time = Time.current) { where("expired_at >= ?", time) }
  scope :unread, -> { where(read_at: nil) }
  scope :read, -> { where.not(read_at: nil) }
end
