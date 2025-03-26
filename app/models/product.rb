class Product < ApplicationRecord
  belongs_to :agent, optional: true # Se `agent` for um relacionamento opcional
  belongs_to :category, optional: true # Adicione essa linha
end