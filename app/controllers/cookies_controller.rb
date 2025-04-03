class CookiesController < ApplicationController
  def index
    session[:cookies_accepted] = params[:cookies] if params[:cookies]
  end

def cookies
end

end
