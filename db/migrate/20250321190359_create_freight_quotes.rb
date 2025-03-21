class CreateFreightQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :freight_quotes do |t|
      t.string :transport_mode
      t.decimal :cost
      t.integer :estimated_days
      t.string :provider

      t.timestamps
    end
  end
end
