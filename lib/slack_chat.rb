class SlackChat < SlackApi
  def delete_url
    '/chat.delete'
  end

  def history(options={})
    http_post(delete_url, options)
  end

  def postMessage_url
    '/chat.postMessage'
  end

  def post_message(options={})
    http_post(postMessage_url, options)
  end

  def update_url
    '/chat.update'
  end

  def update
    http_post(update_url, options)
  end
end
