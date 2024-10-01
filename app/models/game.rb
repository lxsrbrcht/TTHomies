class Game < ApplicationRecord
  has_many :characters
  has_many :dnd_class
  has_many :dnd_subclass

  SYSTEMS = ["D&D 5", "Pathfinder"]

  validates :system, inclusion: { in: SYSTEMS }
end
