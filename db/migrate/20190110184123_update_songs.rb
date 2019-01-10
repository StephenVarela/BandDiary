class UpdateSongs < ActiveRecord::Migration[5.2]
  def self.up
    add_column :songs, :name, :string
    add_column :songs, :time_in_seconds, :integer
    add_column :songs, :file, :text
    add_column :songs, :notes, :text
    add_column :songs, :comments, :text
    add_column :songs, :rating, :integer
  end

  def self.down
    remove_column :songs, :name
    remove_column :songs, :time_in_seconds
    remove_column :songs, :file
    remove_column :songs, :notes
    remove_column :songs, :comments
    remove_column :songs, :rating
  end
end
