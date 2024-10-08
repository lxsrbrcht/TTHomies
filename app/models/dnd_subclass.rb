class DndSubclass < ApplicationRecord
  belongs_to :dnd_class
  has_many :characterclasses
  has_many :characters, through: :characterclasses

  # if character.game.system == "D&D 5"
  #   case character.dnd_class.class_name
  #   when "Artificier"
  #     DND5SUBCLASSES = ["Alchimiste", "Artilleriste", "Ingénieur de Guerre", "Armurier"]
  #   when "Barbare"
  #     DND5SUBCLASSES = ["Sentinelle Ancestrale", "Berserker", "Sentinelle Totémique"]
  #   when "Barde"
  #     DND5SUBCLASSES = ["Collège du Savoir", "Collège de la Valliance", "Collège de l'Épée", "Collège de l'Eloquence"]
  #   when "Clerc"
  #     DND5SUBCLASSES = ["Domaine de la Connaissance", "Domaine de la Guerre", "Domaine de la Lumière", "Domaine de la Nature", "Domaine de la Tempête", "Domaine de la Vie"]
  #   when "Druide"
  #     DND5SUBCLASSES = ["Cercle de la Lune", "Cercle de la Terre", "Cercle des Spores", "Cercle des Étoiles", "Cercle des Feux de Fôret", "Cercle des Rêves", "Cercle des Bergers"]
  #   when "Ensorceleur"
  #     DND5SUBCLASSES = ["Lignée Draconique", "Magie Sauvage", ]
  #   when "Guerrier"
  #     DND5SUBCLASSES = ["Archétype du Champion", "Archétype du Maître d'Armes", "Archétype du Chevalier Occulte"]
  #   when "Magicien"
  #     DND5SUBCLASSES = ["École de l'Abjuration", "École de l'Enchantement", "École de l'Évocation", "École de l'Illusion", "École de la Divination", "École de la Nécromancie", "École de la Transmutation"]
  #   when "Moine"
  #     DND5SUBCLASSES = ["Voie de l'Élémentaliste", "Voie de l'Ombre", "Voie de la Poigne de Fer"]
  #   when "Paladin"
  #     DND5SUBCLASSES = ["Serment de la Rédemption", "Serment des Anciens", "Serment de la Couronne", "Serment de la Dévotion", "Serment de la Conquête", "Serment de la Gloire", "Serment de la Vengeance"]
  #   when "Rôdeur"
  #     DND5SUBCLASSES = ["Conclave des Animaux", "Conclave des Chasseurs", "Conclave des Ombres"]
  #   when "Roublard"
  #     DND5SUBCLASSES = ["Assassin", "Escroc arcanique", "Voleur"]
  #   when "Occultiste"
  #     DND5SUBCLASSES = ["Archifée", "Le Fiélon", "Le Grand Ancien"]
  #   end
  # end
end
