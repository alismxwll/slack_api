class SlackChannels < SlackApi
  def history_url
    '/channels.history'
  end

  def history(options={})
    http_post(history_url, options)
  end

  def info_url
    '/channels.info'
  end

  def info(options={})
    http_post(info_url, options)
  end

  def invite_url
    '/channels.invite'
  end

  def invite(options={})
    http_post(invite_url, options)
  end

  def join_url
    '/channels.join'
  end

  def join(options={})
    http_post(join_url, options)
  end

  def kick_url
    '/channels.kick'
  end

  def kick(options={})
    http_post(kick_url, options)
  end

  def leave_url
    '/channels.leave'
  end

  def leave(options={})
    http_post(leave_url, options)
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

  def mark(options={})
    http_post(mark_url, options)
  end

  def set_purpose_url
    '/channels.setPurpose'
  end

  def set_purpose(options={})
    http_post(set_purpose_url, options)
  end

  def set_topic_url
    '/channels.setTopic'
  end

  def set_topic(options={})
    http_post(set_topic_url, options)
  end
end
