module Retirable
  extend ActionSupport::Concern

  included do
    validates :retired_by, presence: true, if: -> { retired_at.present? }

    validate :retirement_consistency

    def retire(by:  Current.user, reason:)
      raise "Already retired" if retired_at.present?
      update!(retired_by: by, retired_at: Time.current, retire_reason: reason)
    end

    def retired?
      !!retired_at
    end

    private
    def retirement_consistency
      if retired_at.present? && retired_by.nil?
        errors.add(:retired_by, "must be set if retired_at is present")
      elsif retired_by.present? && retired_at.nil?
        errors.add(:retired_at, "must be set if retired_by is present")
      end
    end
  end
end
