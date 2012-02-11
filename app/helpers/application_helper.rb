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
  
  

end
