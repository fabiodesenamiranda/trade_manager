json.extract! cost_simulation, :id, :product, :fob_price, :freight_cost, :insurance, :import_taxes, :total_cost, :created_at, :updated_at
json.url cost_simulation_url(cost_simulation, format: :json)
