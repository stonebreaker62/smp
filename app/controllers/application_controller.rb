class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_locale

  def route_not_found
    render file: Rails.public_path.join("404.html"), status: :not_found, layout: false
  end

  def render_flash
    render turbo_stream: turbo_stream.update("flash", partial: "layouts/flash")
  end

  protected

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || :de
  end

end
