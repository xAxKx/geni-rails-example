class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_geni_token
  def ensure_geni_token
    if session[:geni_token].nil?
      redirect_to auth_path
    end
  end
  
  def geni
    @geni ||= Geni::Client.new({
      :app_id     => APP_ID,
      :app_secret => APP_SECRET,
      :token      => session[:geni_token]
    })
  end
end
