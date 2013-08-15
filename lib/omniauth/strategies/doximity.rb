module OmniAuth
  module Strategies
    class Doximity < OAuth2
      DEFAULT_SCOPE = 'basic'
      include OmniAuth::Strategy

      option :client_options, {
        :site => 'https://www.doximity.com/',
        :authorize_url => '/oauth/authorize',
        :token_url => '/oauth/token'
      }

      def request_phase
        options[:authorize_params] = client_params.merge(options[:authorize_params])
        super
      end

      private

      def client_params
        {
          :client_id => options[:client_id],
          :redirect_uri => callback_url,
          :response_type => 'code',
          :scope => DEFAULT_SCOPE
        }
      end
    end
  end
end
