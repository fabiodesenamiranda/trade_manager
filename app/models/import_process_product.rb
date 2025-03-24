class ImportProcessProduct < ApplicationRecord
  belongs_to :import_process
  belongs_to :product
end