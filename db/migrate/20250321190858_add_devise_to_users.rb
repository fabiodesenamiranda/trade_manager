class AddDeviseToUsers < ActiveRecord::Migration[8.0]
  def up
    change_table :users do |t|
      # Remova a linha abaixo, pois a coluna "email" já existe
      # t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at

      # Se houver outras colunas que você precisa adicionar, mantenha-as aqui
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end

  def down
    change_table :users do |t|
      # Remova a linha abaixo, pois a coluna "email" já existe
      # t.remove :email
      t.remove :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
    end
  end
end