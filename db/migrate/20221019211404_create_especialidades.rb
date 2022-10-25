class CreateEspecialidades < ActiveRecord::Migration[5.2]
  def change
    create_table :especialidades do |t|
      t.string :poder
      t.string :tipo

      t.timestamps
    end
  end
end
