$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'bundler/setup'
Bundler.setup

require 'simplecov'
SimpleCov.start

require 'shoulda/matchers'

require 'webmock/rspec'

Dir["#{__dir__}/support/**/*.rb"].each { |file| require file }

require 'omniauth/music'
