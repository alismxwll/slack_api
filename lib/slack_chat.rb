class SlackChat < SlackApi
  def delete_url
    '/chat.delete'
  end

  def delete(ts, channel)
    http_post(delete_url, {ts: ts, channel: channel})
  end

  def postMessage_url
    '/chat.postMessage'
  end

  def post_message(channel, text, options={})
    http_post(postMessage_url, {channel: channel, text: text}.merge(options))
  end

  def update_url
    '/chat.update'
  end

  def update(ts, channel, text)
    http_post(update_url, {ts: ts, channel: channel, text: text})
  end
end
