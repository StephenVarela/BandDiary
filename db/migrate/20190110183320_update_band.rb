class UpdateBand < ActiveRecord::Migration[5.2]
  def self.up
    add_column :bands, :name, :string
    add_column :bands, :contact_number, :string
    add_column :bands, :website, :string
  end

  def self.down
    remove_column :bands, :name
    remove_column :bands, :contact_number
    remove_column :bands, :website
  end
end
