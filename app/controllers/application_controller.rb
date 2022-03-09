
include ApplicationHelper
class ApplicationController < ActionController::Base
    before_action :authenticate_utilizador!
    
    # Mensagem e redireccionamento apos verificar-se a autorizacao do usuario
    rescue_from CanCan::AccessDenied do |exception|
        flash[:error] = "Não tem permissão para executar essa acção"
        redirect_to root_path
    end
end
