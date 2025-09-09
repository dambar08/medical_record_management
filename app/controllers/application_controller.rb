class ApplicationController < ActionController::Base
  before_action :determine_locale

  include Pundit::Authorization
  include Authentication
  include Pagy::Backend
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  def determine_locale
    I18n.locale = if %w[en].include?(params[:locale])
      params[:locale]
    else
      AppConfig.default_locale
    end
  end
end
