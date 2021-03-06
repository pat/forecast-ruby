module Forecast
  module IO
    module Configuration
      # Default API endpoint
      DEFAULT_FORECAST_IO_API_ENDPOINT = 'https://api.forecast.io'

      # Forecast API endpoint
      attr_writer :api_endpoint

      # API key
      attr_writer :api_key

      # Yield self to be able to configure Forecast::IO with block-style configuration.
      #
      # Example:
      #
      #   Forecast::IO.configure do |configuration|
      #     configuration.api_key = 'this-is-your-api-key'
      #   end
      def configure
        yield self
      end

      # API endpoint
      def api_endpoint
        @api_endpoint ||= DEFAULT_FORECAST_IO_API_ENDPOINT
      end

      # API key
      def api_key
        @api_key
      end
    end
  end
end