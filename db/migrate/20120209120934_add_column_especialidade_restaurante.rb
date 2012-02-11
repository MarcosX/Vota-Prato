class AddColumnEspecialidadeRestaurante < ActiveRecord::Migration
  def up
    add_column :restaurantes, :especialidade, :string, :limit => 40
  end

  def down
    remove_column :restaurantes, :especialidade
  end
end
