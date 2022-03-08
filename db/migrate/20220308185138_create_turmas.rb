class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.string :curso
      t.integer :estado, default: 0, null: false
      t.timestamps
    end
  end
end
