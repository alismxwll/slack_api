class SlackGroup < SlackApi
  def create_url
    '/groups.create'
  end

  def create(name)
    http_post(create_url, { name: name })
  end

  def create_child_url
    '/groups.createChild'
  end

  def create_child(channel)
    http_post(create_child_url, { channel: channel })
  end

  def history_url
    '/groups.history'
  end

  def history(channel, options = {})
    http_post(history_url, { channel: channel }.merge(options))
  end

  def invite_url
    '/groups.invite'
  end

  def invite(channel, user)
    http_post(invite_url, { channel: channel, user: user })
  end

  def kick_url
    '/groups.kick'
  end

  def kick(channel, user)
    http_post(kick_url, { channel: channel, user: user })
  end

  def leave_url
    '/groups.leave'
  end

  def leave(channel)
    http_post(leave_url, { channel: channel })
  end

  def list_url
    '/groups.list'
  end

  def list(options = {})
    http_post(list_url, options)
  end

  def mark_url
    '/groups.mark'
  end

  def mark(options = {})
    http_post(mark_url, options)
  end

  def set_purpose_url
    '/groups.setPurpose'
  end

  def set_purpose(channel, purpose)
    http_post(set_purpose_url, { channel: channel, purpose: purpose })
  end

  def set_topic_url
    '/groups.setTopic'
  end

  def set_topic(channel, topic)
    http_post(set_topic_url, { channel: channel, topic: topic })
  end
end
