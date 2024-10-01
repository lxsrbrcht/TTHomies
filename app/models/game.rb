class Game < ApplicationRecord
  has_many :characters
  has_many :dnd_class
  has_many :dnd_subclass

  validates :system, inclusion: { in: ["D&D 5", "Pathfinder"] }
end
