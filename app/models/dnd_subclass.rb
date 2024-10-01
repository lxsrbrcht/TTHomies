class DndSubclass < ApplicationRecord
  belongs_to :character, through: :characterclass

  if character.game.system == "D&D 5"
    case character.dnd_class.class_name
    when "Artificier"
      DND5SUBCLASSES = ["Archétype de l'Alchimiste", "Archétype de l'Artilleriste", "Archétype de l'Ingénieur de Guerre"]
    when "Barbare"
      DND5SUBCLASSES = ["Sentinelle Ancestrale", "Furie", "Sentinelle Totémique"]
    when "Barde"
      DND5SUBCLASSES = ["Collège de la Chanson", "Collège de la Valeur"]
    when "Clerc"
      DND5SUBCLASSES = ["Domaine de la Connaissance", "Domaine de la Guerre", "Domaine de la Lumière", "Domaine de la Nature", "Domaine de la Protection", "Domaine de la Tempête", "Domaine de la Vie"]
    when "Druide"
      DND5SUBCLASSES = ["Cercle de la Lune", "Cercle de la Terre", "Cercle de la Vie", "Cercle des Épines"]
    when "Ensorceleur"
      DND5SUBCLASSES = ["Origines Draconique", "Origines Sauvage"]
    when "Guerrier"
      DND5SUBCLASSES = ["Archétype du Champion", "Archétype du Maître d'Armes", "Archétype du Protecteur"]
    when "Magicien"
      DND5SUBCLASSES = ["École de l'Abjuration", "École de l'Enchantement", "École de l'Évocation", "École de l'Illusion", "École de la Divination", "École de la Nécromancie", "École de la Transmutation"]
    when "Moine"
      DND5SUBCLASSES = ["Voie de l'Élémentaliste", "Voie de l'Ombre", "Voie de la Poigne de Fer"]
    when "Paladin"
      DND5SUBCLASSES = ["Sacré", "Vengeance"]
    when "Rôdeur"
      DND5SUBCLASSES = ["Conclave des Animaux", "Conclave des Chasseurs", "Conclave des Ombres"]
    when "Roublard"
      DND5SUBCLASSES = ["Assassin", "Escroc arcanique", "Voleur"]
    when "Occultiste"
      DND5SUBCLASSES = ["Archifée", "Le Fiélon", "Le Grand Ancien"]
    end
  end
end
