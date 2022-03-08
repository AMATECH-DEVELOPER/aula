class Turma < ApplicationRecord
    belongs_to :utilizador
    enum estado: {
        activada: 0,
        desactivada: 1
    }

    validates :nome, :curso, presence: { message: "Não pode estar em branco!"}
    
end
