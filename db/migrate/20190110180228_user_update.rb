class UserUpdate < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :name, :string
    add_column :users, :password_digest, :string
    add_column :users, :email, :string
    add_column :users, :phone, :string
  end

  def self.down
    add_column :users, :name
    add_column :users, :password_digest
    add_column :users, :email
    add_column :users, :phone
  end
end
