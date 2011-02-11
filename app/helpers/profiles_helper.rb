module ProfilesHelper
  def profile_medium_picture(profile)
    if profile.mugshot_urls.has_key?('medium')
      image_tag(profile.mugshot_urls['medium'])
    end
  end
end
