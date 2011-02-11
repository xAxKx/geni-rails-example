class ProfilesController < ApplicationController
  def show    
    profile_id = (params[:id].nil? || params[:id] == 'me') ? nil : params[:id]
    @profile = geni.get_profile(params[:id].split('-')[1])
  end
end
