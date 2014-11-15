require_relative './slack_api'
require_relative './slack_channel'
require_relative './slack_chat'
require_relative './slack_emoji'
require_relative './slack_file'
require_relative './slack_group'
require_relative './slack_im'
# require_relative './slack_oauth'
require_relative './slack_presence'
require_relative './slack_search'
require_relative './slack_star'
require_relative './slack_user'

class Slack
  attr_reader :token

  def initialize(token)
    @token = token.to_s
  end

  def headers
    {
      'token' => "#{@token}",
      'Accept' => 'application/json',
      'Content-Type' => 'application/json'
    }
  end

  def channels
    @channel ||= SlackChannel.new(headers)
  end

  def chat
    @chat ||= SlackChat.new(headers)
  end

  def emoji
    @emoji ||= SlackEmoji.new(headers)
  end

  def files
    @file ||= SlackFile.new(headers)
  end

  def groups
    @group ||= SlackGroup.new(headers)
  end

  def im
    @im ||= SlackIm.new(headers)
  end

  def oauth
    @oauth ||= SlackOauth.new(headers)
  end

  def presence
    @presence ||= SlackPresence.new(headers)
  end

  def search
    @search ||= SlackSearch.new(headers)
  end

  def stars
    @star ||= SlackStar.new(headers)
  end

  def users
    @user ||= SlackUser.new(headers)
  end
end
