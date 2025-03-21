json.extract! freight_quote, :id, :transport_mode, :cost, :estimated_days, :provider, :created_at, :updated_at
json.url freight_quote_url(freight_quote, format: :json)
