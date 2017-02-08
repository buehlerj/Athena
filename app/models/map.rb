class Map < ApplicationRecord
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :game_types
end
