class SlackIm < SlackApi
  def history_url
    '/im.history'
  end

  def history(channel, options={})
    http_post(history_url, {channel: channel}.merge(options))
  end

  def list_url
    '/im.list'
  end

  def list(options={})
    http_post(list_url, options)
  end

  def mark_url
    '/im.mark'
  end

  def mark(channel, ts)
    http_post(mark_url, {channel: channel, ts: ts})
  end
end
