require 'binance'

class BinanceApiController < ApplicationController
	def index
		api_key = Rails.application.credentials.binance[:access_key_id]
		secret_key = Rails.application.credentials.binance[:secret_access_key]
		client = Binance::Client::REST.new api_key: api_key, secret_key: secret_key

		@hello = client.open_orders
	end
end
