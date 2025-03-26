class CreateCustomsClearances < ActiveRecord::Migration[8.0]
  def change
    create_table :customs_clearances do |t|
      t.string :reference
      t.string :import_license
      t.date :import_license_date
      t.string :import_license_type
      t.string :import_declaration
      t.date :import_declaration_date
      t.string :parametrization_channel
      t.string :di_status
      t.string :import_type
      t.string :cargo_location
      t.decimal :customs_costs
      t.text :documentation

      t.timestamps
    end
  end
end
