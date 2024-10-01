class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game

  RACES = %w[human elf dwarf halfling gnome half-elf half-orc tiefling aasimar dragonborn goliath]

  validates :name, presence: true
  validates :dnd_class, presence: true
  validates :dnd_subclass, presence: true
  validates :race, inclusion: { in: RACES }
  validates :bio, presence: true, length: { minimum: 50, maximum: 700 }
end
