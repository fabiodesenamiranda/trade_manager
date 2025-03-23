class Contact < ApplicationRecord
  belongs_to :agent
  validates :name, :email, :phone, presence: true
end
