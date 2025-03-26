class ImportProcess < ApplicationRecord
  belongs_to :supplier, class_name: "Agent", optional: false
  belongs_to :exporter, class_name: "Agent", optional: true
  has_many :import_process_products, dependent: :destroy
  has_many :products, through: :import_process_products

  accepts_nested_attributes_for :import_process_products, allow_destroy: true

  enum :incoterm, { fob: 0, cif: 1, ex_works: 2 }
  enum :payment_term, { t30: 0, t30_60: 1, t30_60_90: 2, t30_60_90_120: 3 }, prefix: :payment_term

  validates :invoice_number, :invoice_date, :supplier_id, presence: true
end