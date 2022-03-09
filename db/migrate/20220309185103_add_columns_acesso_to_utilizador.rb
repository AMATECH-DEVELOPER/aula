class AddColumnsAcessoToUtilizador < ActiveRecord::Migration[6.1]
  def change
    add_column :utilizadores, :acesso, :integer, default: 0, null: false
  end
end
