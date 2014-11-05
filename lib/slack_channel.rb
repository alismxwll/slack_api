class SlackChannels < SlackAPI

  def list_url
    "/channels.list/"
  end

  def list
    http_post(list_url)
  end

end
