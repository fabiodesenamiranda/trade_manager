class CreateShipmentTransports < ActiveRecord::Migration[8.0]
  def change
    create_table :shipment_transports do |t|
      t.string :reference
      t.string :transport_mode
      t.string :origin_country
      t.string :destination_country
      t.string :origin_port
      t.string :destination_port
      t.decimal :net_weight
      t.decimal :gross_weight
      t.decimal :cubic_volume
      t.string :equipment_type
      t.integer :transit_time
      t.string :shipment_type
      t.integer :free_time
      t.string :route
      t.date :eta
      t.date :etd
      t.string :shipping_company
      t.string :shipping_agency
      t.string :transport_doc_type
      t.string :transport_doc_number
      t.date :transport_doc_date

      t.timestamps
    end
  end
end
