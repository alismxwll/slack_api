class SlackGroups < SlackApi
  def create_url
    '/groups.create'
  end

  def create(options={})
    http_post(create_url, options)
  end

  def create_child_url
    '/groups.createChild'
  end

  def create_child(options={})
    http_post(create_child_url, options)
  end

  def history_url
    '/groups.history'
  end

  def history(options={})
    http_post(history_url, options)
  end

  def invite_url
    '/groups.invite'
  end

  def invite(options={})
    http_post(invite_url, options)
  end

  def kick_url
    '/groups.kick'
  end

  def kick(options={})
    http_post(kick_url, options)
  end

  def leave_url
    '/groups.leave'
  end

  def leave(options={})
    http_post(leave_url, options)
  end

  def list_url
    '/groups.list'
  end

  def list(options={})
    http_post(list_url, options)
  end

  def mark_url
    '/groups.mark'
  end

  def mark(options={})
    http_post(mark_url, options)
  end

  def set_purpose_url
    '/groups.setPurpose'
  end

  def set_purpose(options={})
    http_post(set_purpose_url, options)
  end

  def set_topic_url
    '/groups.setTopic'
  end

  def set_topic(options={})
    http_post(set_topic_url, options)
  end
end
