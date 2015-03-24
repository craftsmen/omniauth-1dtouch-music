describe OmniAuth::Strategies::Music do
  describe 'configuration' do
    it 'returns correct name' do
      expect(stubbed_strategy.options.name).to eq('music')
    end

    it 'returns correct default site' do
      expect(stubbed_strategy.options.client_options.site).to eq('http://music.1dtouch.com')
    end

    it 'returns correct given site' do
      expect(stubbed_strategy(client_options: { site: 'http://somewhereelse.com'}).options.client_options.site).to eq('http://somewhereelse.com')
    end

    it 'returns correct authorize url' do
      expect(stubbed_strategy.options.client_options.authorize_url).to eq('/oauth/authorize')
    end
  end

  describe 'data normalization' do
    it 'extracts uid from raw info' do
      strategy = stubbed_strategy
      allow(strategy).to receive(:raw_info).and_return(
        'id' => '69'
      )

      expect(strategy.uid).to eq('69')
    end

    it 'extracts name and email from raw info' do
      strategy = stubbed_strategy
      allow(strategy).to receive(:raw_info).and_return(
        'name' => 'Jim Morrison',
        'email' => 'theblue@b.us'
      )

      expect(strategy.info[:name]).to eq('Jim Morrison')
      expect(strategy.info[:email]).to eq('theblue@b.us')
    end
  end
end
