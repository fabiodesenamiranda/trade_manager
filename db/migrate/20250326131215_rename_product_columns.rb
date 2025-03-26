class RenameProductColumns < ActiveRecord::Migration[8.0]
  def change
    rename_column :products, :codigo, :code
    rename_column :products, :descricao, :description
    rename_column :products, :unidade, :unit
    rename_column :products, :peso, :weight
    rename_column :products, :embalagem, :packing
  end
end
