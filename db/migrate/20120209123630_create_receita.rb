class CreateReceita < ActiveRecord::Migration
  def up
    create_table :receita do |t|
      t.integer :prato_id
      t.text :conteudo
      t.timestamps
    end
  end
  
  def down
    drop_table :receita
  end
end
