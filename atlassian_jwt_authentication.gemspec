$:.push File.expand_path('../lib', __FILE__)
require 'atlassian-jwt-authentication/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'atlassian-jwt-authentication'
  s.version      = AtlassianJwtAuthentication::VERSION
  s.summary      = 'DB architecture and controller filters for dealing with Atlassian\'s JWT authentication'
  s.description  = 'Atlassian JWT Authentication provides support for handling JWT authentication as required by Atlassian when building add-ons: https://developer.atlassian.com/static/connect/docs/latest/concepts/authentication.html'
  s.license      = 'MIT'

  s.author = 'Laura Barladeanu'
  s.email = 'laura@meisterlabs.com'
  s.homepage = 'http://meisterlabs.com/'

  s.required_ruby_version = '>= 2'

  s.files = Dir['CHANGELOG', 'README.md', 'MIT-LICENSE', 'lib/**/*']
  s.require_path = 'lib'

  s.add_dependency('i18n', '>= 0.6.9')
  s.add_dependency('builder', '>= 2.1.2', '< 4.0.0')
  s.add_dependency('jwt', '>= 0.1.6')

  s.add_development_dependency('rake')
  s.add_development_dependency('activerecord', '>= 4.1.0')
  s.add_development_dependency('bundler')
  s.add_development_dependency('generator_spec')
end