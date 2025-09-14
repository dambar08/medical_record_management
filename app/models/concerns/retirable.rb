module Retirable
  extend ActionSupport::Concern

  included do
    validates :retired_by, presence: true, if: -> { retired_at.present? }

    def retire(by:  Current.user, reason:)
      raise "Already retired" if retired_at.present?
      update(retired_by: by, retired_at: Time.current, retire_reason: reason)
    end

    def retired?
      !!retired_at
    end
  end
end
