require_relative './spec_helper'

describe SlackChannel do
  subject do
    SlackChannel.new({})
  end

  describe 'history' do
    it 'can history' do
      expect(subject.history_url()).to eq('/channels.history')
    end

    it 'can list a channels history' do
      response = @slack.channel.history(@slack_channel)
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end

  describe 'info' do
    it 'can info' do
      expect(subject.info_url()).to eq('/channels.info')
    end

    it 'can retrieve info about a channel' do
      response = @slack.channel.info(@slack_channel)
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end

  describe 'invite' do
    it 'can invite' do
      expect(subject.invite_url()).to eq('/channels.invite')
    end

    it 'can invite a user to a channel' do
      response = @slack.channel.invite(@slack_channel, @test_user)
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end

  describe 'join' do
    it 'can join' do
      expect(subject.join_url()).to eq('/channels.join')
    end

    it 'will create and join a new channel' do
      response = @slack.channel.join(@random_channel)
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end

  describe 'kick' do
    it 'can kick' do
      expect(subject.kick_url()).to eq('/channels.kick')
    end

    it 'will kick a user from a channel' do
      response = @slack.channel.kick(@premade_channel, @test_user)
      puts "response: #{response}"
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end
#   def kick_url
#     '/channels.kick'
#   end
#
#   def kick(channel)
#     http_post(kick_url, { channel: channel })
#   end
#
#   def leave_url
#     '/channels.leave'
#   end
#
#   def leave(channel)
#     http_post(leave_url, channel)
#   end
#
#   def list_url
#     '/channels.list'
#   end
#
#   def list(options={})
#     http_post(list_url, options)
#   end
#
#   def mark_url
#     '/channels.mark'
#   end
#
#   def mark(channel, ts)
#     http_post(mark_url, { channel: channel, ts: ts })
#   end
#
#   def set_purpose_url
#     '/channels.setPurpose'
#   end
#
#   def set_purpose(channel, purpose)
#     http_post(set_purpose_url, { channel: channel, purpose: purpose })
#   end
#
#   def set_topic_url
#     '/channels.setTopic'
#   end
#
#   def set_topic(channel, topic)
#     http_post(set_topic_url, { channel: channel, topic: topic })
#   end
# end
#
end
