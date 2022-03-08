module TurmasHelper
    def lista_de_estados_da_turma
        Turma.estados.map{|key, value| [key, key] }
    end
end
