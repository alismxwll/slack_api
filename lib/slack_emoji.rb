class SlackEmoji < SlackApi
  def emoji_url
    '/emoji.list'
  end

  def emoji(options={})
    http_post(emoji_url, options)
  end
end
