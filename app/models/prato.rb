class Prato < ActiveRecord::Base
  validates_presence_of :nome, :message => " - deve ser preenchido"
  
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"
  
  validate :presence_of_more_than_one_restaurante
  private
  def presence_of_more_than_one_restaurante
    errors.add("restaurante", " deve haver ao menos um restaurante") if restaurantes.empty?
  end
  
  has_and_belongs_to_many :restaurante
  has_one :receita
end
