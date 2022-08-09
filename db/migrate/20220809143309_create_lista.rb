class CreateLista < ActiveRecord::Migration[7.0]
  def change
    create_table :lista do |t|
      t.string :nome
      t.string :tarefa
      t.string :status
      t.string :categoria
      t.string :data_inicio
      t.string :data_conclusao

      t.timestamps
    end
  end
end
