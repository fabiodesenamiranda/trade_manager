class Agent < ApplicationRecord
  has_many :contacts, dependent: :destroy
  enum agent_type: { fornecedor: 0, exportador: 1, importador: 2, distribuidor: 3 }

  validates :name, :phone, :email, :country, :state, :address, :number, :neighborhood, :city, :zip_code, :agent_type, presence: true
end
