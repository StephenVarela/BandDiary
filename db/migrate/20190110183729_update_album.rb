class UpdateAlbum < ActiveRecord::Migration[5.2]
  def self.up
    add_column :albums, :name, :string
    add_column :albums, :producer, :string
    add_column :albums, :production_notes, :string
    add_column :albums, :notes, :string
  end

  def self.down
    remove_column :albums, :name
    remove_column :albums, :producer
    remove_column :albums, :production_notes
    remove_column :albums, :notes
  end
end
