class CreateImportProcesses < ActiveRecord::Migration[8.0]
  def change
    create_table :import_processes do |t|
      t.string :process_number
      t.string :importer
      t.string :supplier
      t.text :product_description
      t.string :status

      t.timestamps
    end
  end
end
