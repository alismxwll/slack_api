class SlackSearch < SlackApi
  def all_url
    '/search.all'
  end

  def all(query, options={})
    http_post(all_url, {query: query}.merge(options))
  end

  def files_url
    '/search.files'
  end

  def files(query, options={})
    http_post(files_url, {query: query}.merge(options))
  end

  def messages_url
    '/search.messages'
  end

  def messages(query, options={})
    http_post(messages_url, {query: query}.merge(options))
  end
end
