class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :conteudo
      t.integer :comentavel_id
      t.string :comentavel_type

      t.timestamps
    end
    add_index :comentarios, :comentavel_type
    add_index :comentarios, :comentavel_id
  end

  def self.down
    drop_table :comentarios
  end
end
