class StaticPagesController < ApplicationController
  def profile_hs; end

  def profile_ts; end

  def profile_hg; end

  def profile_os; end

  def profile_yp; end

  def profile_jm; end

  def profile_js; end

  def profile_mg; end

  def profile_kw; end

  def profile_jb; end

  def profile_ck; end

  def about
    session[:active] = "about"
  end

  def external_content
    # Keine zusätzliche Logik nötig, da wir nur die View rendern
  end

  def join
    session[:active] = "join"
  end

  def team
    session[:active] = "team"
  end

  def career
    session[:active] = "career"
  end

  def expert
    session[:active] = "expert"
  end

  def executive
    session[:active] = "executive"
  end

  def principles
    session[:active] = "principles"
  end

  def positions
    session[:active] = "positions"
  end

  def industries
    session[:active] = "industries"
  end

  def it
    session[:active] = "industries"
  end

  def it_consulting
    session[:active] = "industries"
  end

  def man_consulting
    session[:active] = "industries"
  end

  def legal_consulting
    session[:active] = "industries"
  end

  def fsi
    session[:active] = "industries"
  end

  def equity
    session[:active] = "industries"
  end

  def imprint; end

  def datasecurity; end

  def terms; end
end
