json.extract! agent, :id, :name, :phone, :email, :country, :state, :address, :number, :neighborhood, :city, :zip_code, :agent_type, :created_at, :updated_at
json.url agent_url(agent, format: :json)
