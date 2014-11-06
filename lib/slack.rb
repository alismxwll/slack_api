require_relative './slack_api'
require_relative './slack_channels'

class Slack
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def headers
    {
      'token' => "#{@token}",
      'Accept' => 'application/json',
      'Content-Type' => 'application/json'
    }
  end

  def channels
    @channels ||= SlackChannels.new(headers)
  end

  def chat
    @chat ||= SlackChat.new(headers)
  end

  def emoji
    @emoji ||= SlackEmoji.new(headers)
  end

  def files
    @files ||= SlackFiles.new(headers)
  end

  def groups
    @groups ||= Slackgroups.new(headers)
  end

  def im
    @im ||= SlackIm.new(headers)
  end
end
