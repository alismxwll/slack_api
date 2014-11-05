require_relative './slack_api'
require_relative './slack_channel'

class Slack
  attr_reader
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
    @channels
  end
end
