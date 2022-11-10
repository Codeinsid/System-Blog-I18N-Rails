class CreateCdzs < ActiveRecord::Migration[5.2]
  def change
    create_table :cdzs do |t|
      t.string :nome
      t.string :costelação
      t.integer :idade
      t.string :foto

      t.timestamps
    end
  end
end
