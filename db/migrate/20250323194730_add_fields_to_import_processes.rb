class AddFieldsToImportProcesses < ActiveRecord::Migration[7.0]
  def change
    add_column :import_processes, :invoice_number, :string
    add_column :import_processes, :invoice_date, :date
    add_column :import_processes, :incoterm, :integer
    add_column :import_processes, :payment_term, :integer
  end
end
