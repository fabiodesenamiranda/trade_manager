class RemoveImporterAndSupplierIdFromImportProcesses < ActiveRecord::Migration[8.0]
  def change
    remove_column :import_processes, :importer, :string
    remove_column :import_processes, :supplier_id, :integer
  end
end
