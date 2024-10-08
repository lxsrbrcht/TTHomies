class DndClass < ApplicationRecord
  has_one :game
  has_many :characterclasses
  has_many :characters, through: :characterclasses
  has_many :dnd_subclasses

  validates :class_name, presence: true
  validates :description, presence: true
end
