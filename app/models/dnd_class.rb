class DndClass < ApplicationRecord
  has_many :dnd_subclasses, dependent: :destroy

  DNDCLASSES = ["Barbare", "Barde", "Clerc", "Druide", "Ensorceleur", "Guerrier", "Magicien", "Moine", "Paladin", "Rôdeur", "Roublard", "Occultiste"]
  validates :class_name, inclusion: { in: DNDCLASSES }
  validates :description, presence: true


end
