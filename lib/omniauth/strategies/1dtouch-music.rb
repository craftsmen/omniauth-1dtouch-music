require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class OnedtouchMusic < OmniAuth::Strategies::OAuth2
      option :name, 'onedtouch_music'

      option :client_options, site: 'http://music.1dtouch.com',
                              authorize_url: '/oauth/authorize'

      uid { raw_info['id'] }

      info do
        {
          email: raw_info['email'],
          name: raw_info['name']
        }
      end

      extra do
        {
          level: raw_info['level']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
