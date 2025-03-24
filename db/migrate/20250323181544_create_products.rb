class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :codigo
      t.string :descricao
      t.string :ncm
      t.string :unidade
      t.decimal :peso
      t.string :embalagem
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
