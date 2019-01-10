class Album < ApplicationRecord
  has_many :songs
  belongs_to :band
end
