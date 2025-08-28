module Retirable
  extend ActionSupport::Concern

  included do
    def retire
      raise "Already retired" if restired_at.present?
      update(retired_at: Time.current)
    end

    def retired?
      !!retired_at
    end
  end
end
