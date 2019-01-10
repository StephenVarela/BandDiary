class Band < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :albums
end
