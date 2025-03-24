class CreateImportProcessProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :import_process_products do |t|
      t.references :import_process, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
