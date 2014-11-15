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
      expect(response).to be_a(Hash)
      expect(response['ok']).to eq(true)
    end
  end
end
