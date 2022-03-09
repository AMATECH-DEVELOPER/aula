
include ApplicationHelper
class ApplicationController < ActionController::Base
    before_action :authenticate_utilizador!
    def current_ability
        @current_ability ||= Ability.new(current_utilizador)
      end
    # Mensagem e redireccionamento apos verificar-se a autorizacao do usuario
    rescue_from CanCan::AccessDenied do |exception|
        flash[:error] = "Não tem permissão para executar essa acção"
        redirect_to root_path
    end
end
