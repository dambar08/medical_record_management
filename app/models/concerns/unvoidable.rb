module Unvoidable
  extend ActionSupport::Concern

  included do
    def handle
      self.voided_at = nil
      self.voider = nil
      self.save
    end
  end
end
