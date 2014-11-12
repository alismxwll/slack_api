require 'rest-client'

class SlackApi
  attr_reader :headers

  BASE_API_PATH = 'https://slack.com/api'

  def initialize(headers)
    @headers = headers
  end

  def url(path)
    BASE_API_PATH + path
  end

  def http_get(path)
    response = RestClient.get url(path), headers
    JSON.parse(response)
  end

  def http_post(path, content = {})
    response = RestClient.post url(path), headers.merge(content)
    JSON.parse(response)
  end
end
