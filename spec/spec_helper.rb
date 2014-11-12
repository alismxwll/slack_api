require 'rspec'
require 'rake'
require 'rubocop'

CodeClimate::TestReporter.start if ENV['CODECLIMATE_REPO_TOKEN']

Dir.glob('./lib/slack/*.rb').each { |f| require f }

RSpec.configure do |c|
  c.before do
    @test_api = ENV['SLACK_API']
    @test_user = ENV['SLACK_USER']
    @slack_channel = ENV['SLACK_CHANNEL']
    @random_channel = Random.rand(8675).to_s
    @slack = Slack.new(@test_api)
    premake = @slack.channel.join(@random_channel)
    @premade_channel = premake['channel']['id']
  end

  c.after do
  end
end
