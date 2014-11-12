class SlackPresence < SlackApi
  def set_url
    '/presence.set'
  end

  def set(presence)
    http_post(set_url, { presence: presence })
  end
end
