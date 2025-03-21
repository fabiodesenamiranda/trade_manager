class CreateExportProcesses < ActiveRecord::Migration[8.0]
  def change
    create_table :export_processes do |t|
      t.string :process_number
      t.string :exporter
      t.string :client
      t.text :product_description
      t.string :status

      t.timestamps
    end
  end
end
