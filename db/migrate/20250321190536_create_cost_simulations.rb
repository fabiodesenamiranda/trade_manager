class CreateCostSimulations < ActiveRecord::Migration[8.0]
  def change
    create_table :cost_simulations do |t|
      t.string :product
      t.decimal :fob_price
      t.decimal :freight_cost
      t.decimal :insurance
      t.decimal :import_taxes
      t.decimal :total_cost

      t.timestamps
    end
  end
end
