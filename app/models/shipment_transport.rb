class ShipmentTransport < ApplicationRecord
  enum :transport_mode, { marítimo: "Marítimo", aéreo: "Aéreo", rodoviário: "Rodoviário", multimodal: "Multimodal" }
  enum :equipment_type, { container_20: "Container 20’", container_40: "Container 40’", palete: "Palete" }
  enum :shipment_type, { consolidado: "Consolidado", fcl: "FCL", lcl: "LCL" }
  enum :transport_doc_type, { bl: "BL", awb: "AWB", crt: "CRT" }
end

