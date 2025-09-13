class PagesController < ApplicationController
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def product
  end

  def what_we_do
  end

  def who_we_are
  end
end
