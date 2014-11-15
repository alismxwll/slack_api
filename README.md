slack_api
=========
slack = Slack.new('token')

slack.channel.history(channel_id)
slack.channel.info(channel_id)
slack.channel.invite(channel_id, user_id)
slack.channel.join(channel_name)
slack.channel.kick(channel_id, user_id)
slack.channel.leave(channel_id)
slack.channel.list
slack.channel.mark(channel_id, timestamp)
slack.channel.set_purpose(channel_id, purpose)
slack.channel.set_topic(channel_id, topic)

slack.chat.delete(timestamp, channel_id)
slack.chat.post_message(channel_id, text)
slack.chat.update(timestamp, channel_id, text)

slack.emoji.emoji

slack.files.info(file)
slack.files.list
slack.files.upload

slack.groups.create(name)
slack.groups.create_child(channel_id)
slack.groups.history(channel_id)
slack.groups.invite(channel_id, user_id)
slack.groups.kick(channel_id, user_id)
slack.groups.leave(channel_id)
slack.groups.list
slack.groups.mark
slack.groups.set_purpose(channel_id, purpose)
slack.groups.set_topic(channel_id, topic)

slack.im.history(channel_id)
slack.im.list
slack.im.mark(channel_id, timestamp)

slack.presence.set(presence)

slack.search.all(query)
slack.search.files(query)
slack.search.messages(query)

slack.stars.list

slack.users.info(user_id)
slack.users.list
slack.user.set_active

####Contributing

Documentation, feature requests, code, tests, and [bug reports](https://github.com/andrewrdakers/slack_api/issues) are welcomed.
