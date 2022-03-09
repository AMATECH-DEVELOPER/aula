module ApplicationHelper
    def administrador?
        current_utilizador.administrador?
    end
    def nao_administrador?
        !administrador?
    end
 end
