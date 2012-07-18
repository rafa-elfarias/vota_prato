class AddFotoColumnsToRestaurante < ActiveRecord::Migration
  def self.up
    add_column :restaurantes, :foto_file_name, :string
    add_column :restaurantes, :foto_content_type, :string
    add_column :restaurantes, :foto_file_size, :integer
    add_column :restaurantes, :foto_updated_at, :datetime
  end

  def self.down
    remove_column :restaurantes, :foto_file_name
    remove_column :restaurantes, :foto_content_type
    remove_column :restaurantes, :foto_file_size
    remove_column :restaurantes, :foto_updated_at
  end
end

