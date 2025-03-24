json.extract! product, :id, :codigo, :descricao, :ncm, :unidade, :peso, :embalagem, :agente_id, :created_at, :updated_at
json.url product_url(product, format: :json)
