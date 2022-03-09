module ApplicationHelper
    
    def administrador?
        current_utilizador.administrador?
    end
    def nao_administrador?
        !administrador?
    end
    def notification

        if notice.present?
          content_tag(:div, class: "alert alert-info pull-right") do
            concat(content_tag(:button, class: "close", 'data-dismiss' => "alert") do 'x' end).html_safe
            concat(notice).html_safe
          end
        elsif alert.present?
          content_tag(:div, class: "alert alert-danger pull-right") do
            concat(content_tag(:button, class: "close", 'data-dismiss' => "alert") do 'x' end).html_safe
            concat(alert).html_safe
          end
        end
    end
 end
