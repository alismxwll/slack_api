class SlackUser < SlackApi
  def info_url
    '/users.info'
  end

  def info(user, options={})
    http_post(info_url, {user: user}.merge(options))
  end

  def list_url
    '/users.list'
  end

  def list(options={})
    http_post(list_url, options)
  end

  def set_active_url
    '/users.setActive'
  end

  def set_active(options={})
    http_post(set_active_url, options)
  end
end
