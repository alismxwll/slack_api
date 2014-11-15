class SlackEmoji < SlackApi
  def emoji_url
    '/emoji.list'
  end

  def list
    http_post(emoji_url)
  end
end
