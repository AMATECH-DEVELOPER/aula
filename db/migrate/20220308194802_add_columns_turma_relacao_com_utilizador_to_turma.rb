class AddColumnsTurmaRelacaoComUtilizadorToTurma < ActiveRecord::Migration[6.1]
  def change
    Turma.all.each(&:destroy)
    add_reference :turmas, :utilizador, null: false, foreign_key: true
  end
end
