module ActiveRecord
  module Updatable
    extend ActiveSupport::Concern

    included do
      validate :validates_un_updatable_fields, on: :update

      protected
      def un_updatable_field_names
        [ :created_at ]
      end

      private
      def validates_un_updatable_fields
        un_updatable_field_names.each do |field_name|
          if send("#{field_name}_changed?")
            errors.add(field_name, "can't be modified after creation")
          end
        end
      end
    end
  end
end
