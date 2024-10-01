class DndClass < ApplicationRecord
  belongs_to :character


  DNDCLASSES = ["Artificier", "Barbare", "Barde", "Clerc", "Druide", "Ensorceleur", "Guerrier", "Magicien", "Moine", "Paladin", "Rôdeur", "Roublard", "Occultiste"]

  validates :class_name, inclusion: { in: DNDCLASSES }
  validates :description, presence: true

end
