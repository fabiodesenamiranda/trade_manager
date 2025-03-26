class AddSupplierToImportProcesses < ActiveRecord::Migration[8.0]
  def change
    add_reference :import_processes, :supplier, foreign_key: { to_table: :agents }
  end
end
