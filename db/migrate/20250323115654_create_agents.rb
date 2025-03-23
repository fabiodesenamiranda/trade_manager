class CreateAgents < ActiveRecord::Migration[8.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :country
      t.string :state
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :zip_code
      t.integer :agent_type

      t.timestamps
    end
  end
end
