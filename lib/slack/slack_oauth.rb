# class SlackOauth < SlackApi
#   def access_url
#     '/oauth.access'
#   end
#
#   def access(client_id, client_secret, code, options={})
#     http_post(access_url, {client_id: client_id, client_secret: client_secret, code: code}.merge(options))
#   end
# end
