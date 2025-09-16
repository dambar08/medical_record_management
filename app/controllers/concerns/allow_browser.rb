module AllowBrowser
  extend ActiveSupport::Concern

  VERSIONS = { safari: 17.2, chrome: 120, firefox: 121, opera: 104, ie: false }

  included do
    # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
    # allow_browser versions: :modern
    allow_browser versions: VERSIONS, block: -> { render template: "sessions/incompatible_browser" }
  end
end
