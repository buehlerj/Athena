class Map < ApplicationRecord
  has_and_belongs_to_many :heroes
  has_and_belongs_to_many :game_types
end
