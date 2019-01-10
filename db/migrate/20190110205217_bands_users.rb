class BandsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :bands_users, :id => false do |t|
      t.integer :band_id
      t.integer :user_id
    end
  end
end
