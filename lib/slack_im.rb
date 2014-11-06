class SlackIm < SlackApi
  def history_url
    '/im.history'
  end

  def im(options={})
    http_post(history_url, options)
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

  def mark(options={})
    http_post(mark_url, options)
  end
end
