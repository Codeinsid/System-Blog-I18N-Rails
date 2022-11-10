class AddEspecialidadeToCdzs < ActiveRecord::Migration[5.2]
  def change
    add_reference :cdzs, :especialidade, foreign_key: true
  end
end
