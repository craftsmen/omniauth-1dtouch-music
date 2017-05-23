# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/1dtouch-music/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-1dtouch-music'
  spec.version       = OmniAuth::OnedtouchMusic::VERSION
  spec.authors       = ['Sébastien Charrier']
  spec.email         = ['sebastien@craftsmen.io']
  spec.summary       = 'Omniauth strategy for 1D touch Music app'
  spec.description   = 'Omniauth strategy for 1D touch Music app'
  spec.homepage      = 'http://github.com/craftsmen/omniauth-1dtouch-music'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'omniauth-oauth2', '>= 1.3.1'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
end
