class DndClass < ApplicationRecord
  has_one :game
  has_many :characterclasses
  has_many :characters, through: :characterclasses
  has_many :dnd_subclasses, dependent: :destroy

  validates :class_name, presence: true
  validates :description, presence: true
end
