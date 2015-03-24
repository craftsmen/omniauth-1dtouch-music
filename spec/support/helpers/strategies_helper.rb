module StrategiesHelper
  def stubbed_strategy(*args)
    OmniAuth::Strategies::Music.new(nil, *args).tap do |strategy|
      allow(strategy).to receive(:request) {
        request
      }
    end
  end

  private

  def stub_request
    double('Request', params: {}, cookies: {}, env: {})
  end
end

RSpec.configure do |config|
  config.include StrategiesHelper
end
