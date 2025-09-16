class ApplicationController < ActionController::Base
  before_action :set_paper_trail_whodunnit
  before_action :determine_locale

  include AllowBrowser
  include Pundit::Authorization
  include Authentication
  include Pagy::Backend


  def determine_locale
    I18n.locale = if %w[en].include?(params[:locale])
      params[:locale]
    else
      Current.user&.locale || AppConfig.default_locale
    end
  end

  def ensure_turbo_frame
    unless request.headers["Turbo-Frame"]
      head :bad_request
    end
  end
end
