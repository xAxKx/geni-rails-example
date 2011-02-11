class GeniController < ApplicationController
  
  skip_before_filter :ensure_geni_token
  
  def auth
    redirect_to geni.authorize_url(request)
  end
  
  def callback
    session[:geni_token] = geni.get_token(params[:code], request)
    redirect_to profile_path(:id => 'profile')
  end
  
  def unauth
    session[:geni_token] = nil
    redirect_to root_path
  end
end
