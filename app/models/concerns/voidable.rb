module Voidable
  extend ActionSupport::Concern

  included do
    belongs_to :voider, class_name: "User"

    def void!
      update!(voided_at: Time.current)
    end

    def voided?
      !!voided_at
    end
  end
end
