class ForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :band_id, :integer
    add_column :songs, :album_id, :integer
  end
end
