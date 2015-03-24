describe OmniAuth::Strategies::Music do
  describe 'configuration' do
    it 'returns correct name' do
      expect(strategy.options.name).to eq('music')
    end

    it 'returns correct default site' do
      expect(strategy.options.client_options.site).to eq('http://music-1dtouch-production.herokuapp.com')
    end

    it 'returns correct given site' do
      expect(strategy(client_options: { site: 'http://somewhereelse.com'}).options.client_options.site).to eq('http://somewhereelse.com')
    end

    it 'returns correct authorize url' do
      expect(strategy.options.client_options.authorize_url).to eq('/oauth/authorize')
    end
  end
end
