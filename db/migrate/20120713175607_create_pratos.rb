class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome, :limit => 80
      t.timestamps
    end
  end
  
  def self.down
    drop_table :pratos
  end
end
