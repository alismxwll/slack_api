class SlackStar < SlackApi
  def list_url
    '/stars.list'
  end

  def list(options = {})
    http_post(list_url, options)
  end
end
