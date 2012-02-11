module ApplicationHelper

  def menu_principal
    menu = %w(cliente qualificacao restaurante)
    menu_principal = "<ul>"
    menu.each do |item|
      menu_principal << "<li>" + link_to(item, :controller => item.pluralize) + "</li>"
    end
    menu_principal << "<ul>"
    raw menu_principal
  end
  
  def formatar_real(number)
    number_to_currency(number, :unity => "R$", :separator => ",", :delimiter => ".")
  end
  
  def comentarios(comentavel)
    comentarios = "<h3>Comentarios</h3>"
    comentarios << "<div id='comentarios'>"
    comentarios <<  render(:partial => "comentarios/comentario", :collection => comentavel.comentarios)
    comentarios << "</div>"
    raw comentarios
  end
  
  def novo_comentario(comentavel)
    raw render(:partial => "comentarios/novo_comentario", :locals => { :comentavel => comentavel})
  end

end
