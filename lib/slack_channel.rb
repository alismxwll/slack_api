class SlackChannel < SlackApi
  def history_url
    '/channels.history'
  end

  def history(channel, options={})
    http_post(history_url, {channel: channel}.merge(options))
  end

  def info_url
    '/channels.info'
  end

  def info(channel)
    http_post(info_url, {channel: channel}
  end

  def invite_url
    '/channels.invite'
  end

  def invite(channel, user)
    http_post(invite_url, {channel: channel, user: user}
  end

  def join_url
    '/channels.join'
  end

  def join(name)
    http_post(join_url, {name: name})
  end

  def kick_url
    '/channels.kick'
  end

  def kick(channel)
    http_post(kick_url, {channel: channel})
  end

  def leave_url
    '/channels.leave'
  end

  def leave(channel)
    http_post(leave_url, channel)
  end

  def list_url
    '/channels.list'
  end

  def list(options={})
    http_post(list_url, options)
  end

  def mark_url
    '/channels.mark'
  end

  def mark(channel, ts)
    http_post(mark_url, {channel: channel, ts: ts})
  end

  def set_purpose_url
    '/channels.setPurpose'
  end

  def set_purpose(channel, purpose)
    http_post(set_purpose_url, {channel: channel, purpose: purpose})
  end

  def set_topic_url
    '/channels.setTopic'
  end

  def set_topic(channel, topic)
    http_post(set_topic_url, {channel: channel, topic: topic})
  end
end
