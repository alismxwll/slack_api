$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'slack_api'
  s.version       = '0.0.1'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Andrew Akers']
  s.email         = ['andrewrdakers@gmail.com']
  s.homepage      = 'https://github.com/andrewrdakers/slack_api'
  s.summary       = 'Slack Api Wrapper'
  s.files         = ['lib/slack/*.rb']

  s.require_paths = ['lib']

  s.add_runtime_dependency 'httparty'

  s.add_development_dependency 'webmock'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'turn'
  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'rubocop', '~> 0.26.1'
end
