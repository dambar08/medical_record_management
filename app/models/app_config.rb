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

# RailsSettings Model
class AppConfig < RailsSettings::Base
  cache_prefix { "v1" }
  HEX_COLOR_REGEX = /\A#(\h{6}|\h{3})\z/

  field :default_font, type: :string, default: "sans_serif"
  field :host, type: :string, default: "http://localhost:3000"
  field :default_locale, default: "en", type: :string
  field :confirmable_enable, default: "0", type: :boolean
  field :admin_emails, default: "admin@rubyonrails.org", type: :array
  field :omniauth_google_client_id, default: (ENV["OMNIAUTH_GOOGLE_CLIENT_ID"] || ""), type: :string, readonly: true
  field :omniauth_google_client_secret, default: (ENV["OMNIAUTH_GOOGLE_CLIENT_SECRET"] || ""), type: :string, readonly: true

  field :primary_brand_color_hex, type: :string, default: "#3b49df", validates: {
    format: {
      with: HEX_COLOR_REGEX,
      message: proc { I18n.t("models.app_config.color_hex.message") }
    },
    color_contrast: true
  }
  field :accent_background_color_hex, type: :string, default: nil, validates: {
    format: {
      with: HEX_COLOR_REGEX,
      message: proc { I18n.t("models.app_config.color_hex.message") }
    },
    color_contrast: true
  }
end
