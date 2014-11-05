require_relative './spec_helper'

  test_api = ENV['SLACK_API']
  test_user = ENV['SLACK_USER']

describe Slack do
  user do
    Slack.new
  end
end
