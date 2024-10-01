class DndClass < ApplicationRecord
  belongs_to :character, through: :characterclass

  if character.game.system == "D&D 5"
    DNDCLASSES = ["Barbare", "Barde", "Clerc", "Druide", "Ensorceleur", "Guerrier", "Magicien", "Moine", "Paladin", "Rôdeur", "Roublard", "Occultiste"]
  end

  validates :class_name, inclusion: { in: DNDCLASSES }
  validates :description, presence: true

end
