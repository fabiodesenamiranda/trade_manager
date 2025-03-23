class CreateExchangeRates < ActiveRecord::Migration[8.0]
  def change
    create_table :exchange_rates do |t|
      t.decimal :rate
      t.datetime :recorded_at

      t.timestamps
    end
  end
end
