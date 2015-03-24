require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Music < OmniAuth::Strategies::OAuth2
      option :name, :music

      option :client_options, {
        :site => 'music-1dtouch-production.herokuapp.com',
        :authorize_url => '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
          :email => raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
