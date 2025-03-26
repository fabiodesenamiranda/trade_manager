class UpdateImportProcesses < ActiveRecord::Migration[8.0]
  def change
    rename_column :import_processes, :process_number, :reference
    rename_column :import_processes, :product_description, :product

    change_column :import_processes, :incoterm, :string
    change_column :import_processes, :payment_term, :string

    add_column :import_processes, :quantity, :integer
    add_column :import_processes, :unit_price, :decimal, precision: 10, scale: 2
    add_column :import_processes, :currency, :string
    add_column :import_processes, :total_value, :decimal, precision: 10, scale: 2
    add_column :import_processes, :delivery_deadline, :date

  end
end
