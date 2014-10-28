require 'webmock'
require 'vcr'
require 'turn'
require 'rspec'
require 'rake'
require 'rubocop'

CodeClimate::TestReporter.start if ENV['CODECLIMATE_REPO_TOKEN']

Dir.glob('./lib/factor/connector/*.rb').each { |f| require f }

Turn.config do |c|
  c.format  = :outline
  c.trace   = true
  c.natural = true
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/dish_cassettes'
  c.hook_into :webmock
end
