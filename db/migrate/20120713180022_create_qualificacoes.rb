class CreateQualificacoes < ActiveRecord::Migration
  def change
    create_table :qualificacoes do |t|
      t.integer :cliente_id
      t.integer :restaurante_id
      t.float :nota
      t.float :valor_gasto
      t.timestamps
    end

    add_index(:qualificacoes, :cliente_id)
    add_index(:qualificacoes, :restaurante_id)
  end

  def self.down
    drop_table :qualificacoes
  end
end
