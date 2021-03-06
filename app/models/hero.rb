class Hero < ApplicationRecord
  self.table_name = 'heroes'

  has_and_belongs_to_many :map
  belongs_to :division
  has_many :abilities
  has_many :ultimates
  has_many :weapons
end
