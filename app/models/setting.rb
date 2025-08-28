# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  var        :string           not null
#  value      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_settings_on_var  (var) UNIQUE
#

class Setting < ApplicationRecord
  after_commit :rewrite_cache, on: %i[create update]
  after_commit :expire_cache, on: %i[destroy]

  class << self
    def method_missing(method, *args)
      # set a value for a variable
      if method.end_with?("=")
        var_name = method.to_s.chomp("=")
        value = args.first
        self[var_name] = value
      else
        # retrieve a value
        self[method.to_s]
      end
    end

    def cache_prefix_by_startup
      @cache_prefix_by_startup ||= Digest::MD5.hexdigest(default_settings.to_s)
    end

    def cache_key(var_name)
      "rails_settings_cached/#{cache_prefix_by_startup}/#{var_name}"
    end

    def [](key)
      Rails.cache.fetch(cache_key(key)) do
        db_val = find_by(var: key)
        db_val ? db_val.value : default_settings[key]
      end
    end

    # set a setting value by [] notation
    def []=(var_name, value)
      record = find_or_initialize_by(var: var_name.to_s)
      record.value = value
      record.save!
    end

    def default_settings
      return @default_settings if defined?(@default_settings)

      content = Rails.root.join("config", "settings.yml").read
      hash = content.empty? ? {} : YAML.safe_load(ERB.new(content).result, aliases: true).to_hash
      @default_settings = (hash[Rails.env] || {}).freeze
    end
  end

  # get the value field, YAML decoded
  def value
    YAML.safe_load(self[:value], permitted_classes: [ ActiveSupport::HashWithIndifferentAccess, Symbol ]) if self[:value].present?
  end

  # set the value field, YAML encoded
  def value=(new_value)
    self[:value] = new_value.to_yaml
  end

  def rewrite_cache
    Rails.cache.write(cache_key, value)
  end

  def expire_cache
    Rails.cache.delete(cache_key)
  end

  def cache_key
    self.class.cache_key(var)
  end

  def to_param
    var
  end
end
