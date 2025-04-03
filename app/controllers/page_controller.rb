class PageController < ApplicationController
  def index
    session[:active] = 'home' if params[:active] == 'home'
    session[:active] = 'services' if params[:active] == 'services'
    session[:active] = 'about' if params[:active] == 'about'
    session[:active] = 'objectives' if params[:active] == 'objectives'
    session[:active] = 'principles' if params[:active] == 'principles'
    session[:active] = 'standards' if params[:active] == 'standards'
    session[:active] = 'strategies' if params[:active] == 'strategies'
    session[:active] = 'industries' if params[:active] == 'industries'
    session[:active] = 'team' if params[:active] == 'team'
  end
end
