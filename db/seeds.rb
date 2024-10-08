# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Game.destroy_all
DndClass.destroy_all
DndSubclass.destroy_all

puts "creating games"
Game.create!(system: "D&D 5")

puts "creating dnd classes"
DndClass.create!(class_name: "Artificier", description: "Les artificiers sont des inventeurs et des bricoleurs, utilisant leur savoir-faire pour créer des objets magiques et des gadgets.", game_id: 1)
DndClass.create!(class_name: "Barbare", description: "Les barbares sont des guerriers féroces qui tirent leur force de la colère.", game_id: 1)
DndClass.create!(class_name: "Barde", description: "Les bardes sont des artistes et des conteurs qui utilisent leur magie pour inspirer leurs alliés et déjouer leurs ennemis.", game_id: 1)
DndClass.create!(class_name: "Clerc", description: "Les clercs sont des serviteurs dévoués d'une divinité, utilisant leur foi pour guérir les malades et repousser les morts-vivants.", game_id: 1)
DndClass.create!(class_name: "Druide", description: "Les druides sont des gardiens de la nature, utilisant leur magie pour protéger les écosystèmes et communiquer avec les animaux.", game_id: 1)
DndClass.create!(class_name: "Ensorceleur", description: "Les ensorceleurs sont des magiciens innés, utilisant leur force de volonté pour manipuler la réalité.", game_id: 1)
DndClass.create!(class_name: "Guerrier", description: "Les guerriers sont des combattants aguerris, utilisant leur force et leur habileté pour vaincre leurs ennemis.", game_id: 1)
DndClass.create!(class_name: "Magicien", description: "Les magiciens sont des érudits de la magie, utilisant leur savoir pour lancer des sorts et invoquer des créatures.", game_id: 1)
DndClass.create!(class_name: "Moine", description: "Les moines sont des maîtres des arts martiaux, utilisant leur corps comme une arme et un bouclier.", game_id: 1)
DndClass.create!(class_name: "Paladin", description: "Les paladins sont des chevaliers sacrés, utilisant leur foi pour protéger les innocents et combattre le mal.", game_id: 1)
DndClass.create!(class_name: "Rôdeur", description: "Les rôdeurs sont des éclaireurs et des pisteurs, utilisant leur connaissance de la nature pour traquer leurs proies.", game_id: 1)
DndClass.create!(class_name: "Roublard", description: "Les roublards sont des voleurs et des escrocs, utilisant leur ruse et leur agilité pour déjouer leurs ennemis.", game_id: 1)
DndClass.create!(class_name: "Occultiste", description: "Les occultistes sont des chercheurs de secrets et des manipulateurs de l'ombre, utilisant leur savoir pour invoquer des entités surnaturelles.", game_id: 1)

puts "creating dnd subclasses"
DndSubclass.create!(subclass_name: "Alchimiste", description: "Les alchimistes sont des maîtres des potions et des poisons, utilisant leur savoir pour créer des substances magiques.", dnd_class_id: 1)
DndSubclass.create!(subclass_name: "Artilleriste", description: "Les artilleristes sont des ingénieurs de guerre, utilisant leur savoir pour construire des armes de siège et des machines de guerre.", dnd_class_id: 1)
DndSubclass.create!(subclass_name: "Ingénieur de Guerre", description: "Les ingénieurs de guerre sont des inventeurs de génie, utilisant leur savoir pour créer des gadgets et des machines de guerre.", dnd_class_id: 1)
DndSubclass.create!(subclass_name: "Armurier", description: "Les armuriers sont des forgerons et des artisans, utilisant leur savoir pour créer des armures et des armes magiques.", dnd_class_id: 1)

DndSubclass.create!(subclass_name: "Berserker", description: "Les berserkers sont des guerriers féroces, utilisant leur rage pour combattre sans peur et sans pitié.", dnd_class_id: 2)
DndSubclass.create!(subclass_name: "Sentinelle Ancestrale", description: "Les sentinelles ancestrales sont des protecteurs des traditions, utilisant leur lien avec les esprits pour protéger les leurs.", dnd_class_id: 2)
DndSubclass.create!(subclass_name: "Sentinelle Totémique", description: "Les sentinelles totémiques sont des chamans et des druides, utilisant leur lien avec les esprits pour protéger la nature.", dnd_class_id: 2)

DndSubclass.create!(subclass_name: "Collège du Savoir", description: "Les bardes du collège du savoir sont des érudits et des savants, utilisant leur savoir pour inspirer leurs alliés et déjouer leurs ennemis.", dnd_class_id: 3)
DndSubclass.create!(subclass_name: "Collège de la Valliance", description: "Les bardes du collège de la valliance sont des diplomates et des négociateurs, utilisant leur charisme pour résoudre les conflits et apaiser les tensions.", dnd_class_id: 3)
DndSubclass.create!(subclass_name: "Collège de l'Épée", description: "Les bardes du collège de l'épée sont des guerriers et des combattants, utilisant leur habileté pour vaincre leurs ennemis et protéger leurs alliés.", dnd_class_id: 3)
DndSubclass.create!(subclass_name: "Collège de l'Eloquence", description: "Les bardes du collège de l'éloquence sont des orateurs et des poètes, utilisant leur charisme pour inspirer les foules et convaincre les sceptiques.", dnd_class_id: 3)

DndSubclass.create!(subclass_name: "Domaine de la Connaissance", description: "Les clercs du domaine de la connaissance sont des érudits et des sages, utilisant leur savoir pour guider les ignorants et éclairer les ténèbres.", dnd_class_id: 4)
DndSubclass.create!(subclass_name: "Domaine de la Guerre", description: "Les clercs du domaine de la guerre sont des champions et des héros, utilisant leur foi pour protéger les innocents et combattre le mal.", dnd_class_id: 4)
DndSubclass.create!(subclass_name: "Domaine de la Lumière", description: "Les clercs du domaine de la lumière sont des phares et des guides, utilisant leur foi pour éclairer les ténèbres et repousser les morts-vivants.", dnd_class_id: 4)
DndSubclass.create!(subclass_name: "Domaine de la Nature", description: "Les clercs du domaine de la nature sont des gardiens de la nature, utilisant leur foi pour protéger les écosystèmes et communiquer avec les animaux.", dnd_class_id: 4)
DndSubclass.create!(subclass_name: "Domaine de la Tempête", description: "Les clercs du domaine de la tempête sont des oracles et des prophètes, utilisant leur foi pour invoquer la foudre et le tonnerre.", dnd_class_id: 4)
DndSubclass.create!(subclass_name: "Domaine de la Vie", description: "Les clercs du domaine de la vie sont des guérisseurs et des soigneurs, utilisant leur foi pour guérir les malades et ressusciter les morts.", dnd_class_id: 4)

DndSubclass.create!(subclass_name: "Cercle de la Lune", description: "Les druides du cercle de la lune sont des gardiens de la nature, utilisant leur magie pour protéger les écosystèmes et communiquer avec les animaux.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle de la Terre", description: "Les druides du cercle de la terre sont des gardiens de la nature, utilisant leur magie pour protéger les écosystèmes et communiquer avec les animaux.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle des Spores", description: "Les druides du cercle des spores sont des nécromanciens et des chamans, utilisant leur magie pour invoquer des créatures et des esprits.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle des Étoiles", description: "Les druides du cercle des étoiles sont des astrologues et des devins, utilisant leur magie pour prédire l'avenir et invoquer des entités célestes.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle des Feux de Fôret", description: "Les druides du cercle des feux de fôret sont des pyromanciens et des incendiaires, utilisant leur magie pour invoquer des flammes et des incendies.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle des Rêves", description: "Les druides du cercle des rêves sont des chamans et des devins, utilisant leur magie pour communiquer avec les esprits et les rêves.", dnd_class_id: 5)
DndSubclass.create!(subclass_name: "Cercle des Bergers", description: "Les druides du cercle des bergers sont des gardiens de la nature, utilisant leur magie pour protéger les écosystèmes et communiquer avec les animaux.", dnd_class_id: 5)

DndSubclass.create!(subclass_name: "Origines Draconique", description: "Les ensorceleurs des origines draconiques sont des sorciers et des magiciens, utilisant leur sang de dragon pour lancer des sorts et invoquer des créatures.", dnd_class_id: 6)
DndSubclass.create!(subclass_name: "Origines Sauvage", description: "Les ensorceleurs des origines sauvages sont des chamans et des druides, utilisant leur lien avec la nature pour lancer des sorts et invoquer des créatures.", dnd_class_id: 6)

DndSubclass.create!(subclass_name: "Archétype du Champion", description: "Les guerriers de l'archétype du champion sont des combattants aguerris, utilisant leur force et leur habileté pour vaincre leurs ennemis.", dnd_class_id: 7)
DndSubclass.create!(subclass_name: "Archétype du Maître d'Armes", description: "Les guerriers de l'archétype du maître d'armes sont des experts en armes et en armures, utilisant leur habileté pour manier les armes et les boucliers.", dnd_class_id: 7)
DndSubclass.create!(subclass_name: "Chevalier Occulte", description: "Les Chevaliers occultes allient prouesses martiales et magiques pour se protéger et défaire leurs ennemis", dnd_class_id: 7)

DndSubclass.create!(subclass_name: "École de l'Abjuration", description: "Les magiciens de l'école de l'abjuration sont des protecteurs et des gardiens, utilisant leur magie pour repousser les ennemis et protéger les alliés.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de l'Enchantement", description: "Les magiciens de l'école de l'enchantement sont des manipulateurs et des séducteurs, utilisant leur magie pour contrôler les esprits et les émotions.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de l'Évocation", description: "Les magiciens de l'école de l'évocation sont des pyromanciens et des sorciers, utilisant leur magie pour invoquer des flammes et des éclairs.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de l'Illusion", description: "Les magiciens de l'école de l'illusion sont des manipulateurs et des illusionnistes, utilisant leur magie pour tromper les sens et les esprits.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de la Divination", description: "Les magiciens de l'école de la divination sont des oracles et des prophètes, utilisant leur magie pour prédire l'avenir et lire les pensées.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de la Nécromancie", description: "Les magiciens de l'école de la nécromancie sont des nécromanciens et des nécrophages, utilisant leur magie pour invoquer des morts-vivants et des spectres.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de la Transmutation", description: "Les magiciens de l'école de la transmutation sont des alchimistes et des métamorphes, utilisant leur magie pour transformer la matière et altérer la réalité.", dnd_class_id: 8)
DndSubclass.create!(subclass_name: "École de la Conjuration", description: "Les magiciens de l'école de la conjuration sont des invocateurs et des sorciers, utilisant leur magie pour invoquer des créatures et des objets.", dnd_class_id: 8)

DndSubclass.create!(subclass_name: "Voie de l'Élémentaliste", description: "Les moines de la voie de l'élémentaliste sont des maîtres des éléments, utilisant leur corps comme un conduit pour invoquer les forces de la nature.", dnd_class_id: 9)
DndSubclass.create!(subclass_name: "Voie de l'Ombre", description: "Les moines de la voie de l'ombre sont des assassins et des espions, utilisant leur habileté pour se faufiler dans l'ombre et frapper sans être vu.", dnd_class_id: 9)
DndSubclass.create!(subclass_name: "Voie de la Poigne de Fer", description: "Les moines de la voie de la poigne de fer sont des maîtres des arts martiaux, utilisant leur corps comme une arme et un bouclier.", dnd_class_id: 9)

DndSubclass.create!(subclass_name: "Serment de la Rédemption", description: "Les paladins du serment de la rédemption sont des pacifistes et des diplomates, utilisant leur foi pour protéger les innocents et apaiser les tensions.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment des Anciens", description: "Les paladins du serment des anciens sont des gardiens de la nature, utilisant leur foi pour protéger les écosystèmes et communiquer avec les animaux.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment de la Couronne", description: "Les paladins du serment de la couronne sont des champions et des héros, utilisant leur foi pour protéger les innocents et combattre le mal.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment de la Dévotion", description: "Les paladins du serment de la dévotion sont des chevaliers sacrés, utilisant leur foi pour protéger les innocents et combattre le mal.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment de la Conquête", description: "Les paladins du serment de la conquête sont des conquérants et des tyrans, utilisant leur foi pour écraser leurs ennemis et soumettre les peuples.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment de la Gloire", description: "Les paladins du serment de la gloire sont des champions et des héros, utilisant leur foi pour protéger les innocents et combattre le mal.", dnd_class_id: 10)
DndSubclass.create!(subclass_name: "Serment de la Vengeance", description: "Les paladins du serment de la vengeance sont des justiciers et des vengeurs, utilisant leur foi pour traquer les criminels et punir les coupables.", dnd_class_id: 10)

DndSubclass.create!(subclass_name: "Conclave des Animaux", description: "Les rôdeurs du conclave des animaux sont des chasseurs et des pisteurs, utilisant leur lien avec les animaux pour traquer leurs proies.", dnd_class_id: 11)
DndSubclass.create!(subclass_name: "Conclave des Chasseurs", description: "Les rôdeurs du conclave des chasseurs sont des éclaireurs et des pisteurs, utilisant leur habileté pour traquer leurs proies et repousser les ennemis.", dnd_class_id: 11)
DndSubclass.create!(subclass_name: "Conclave des Ombres", description: "Les rôdeurs du conclave des ombres sont des assassins et des espions, utilisant leur habileté pour se faufiler dans l'ombre et frapper sans être vu.", dnd_class_id: 11)

DndSubclass.create!(subclass_name: "Assassin", description: "Les roublards de l'archétype de l'assassin sont des tueurs et des espions, utilisant leur habileté pour se faufiler dans l'ombre et frapper sans être vu.", dnd_class_id: 12)
DndSubclass.create!(subclass_name: "Escroc arcanique", description: "Les roublards de l'archétype de l'escroc arcanique sont des magiciens et des sorciers, utilisant leur magie pour tromper les sens et les esprits.", dnd_class_id: 12)
DndSubclass.create!(subclass_name: "Voleur", description: "Les roublards de l'archétype du voleur sont des voleurs et des escrocs, utilisant leur ruse et leur agilité pour déjouer leurs ennemis.", dnd_class_id: 12)

DndSubclass.create!(subclass_name: "Archifée", description: "Les occultistes de l'archifée sont des sorciers et des magiciens, utilisant leur savoir pour invoquer des entités surnaturelles et des démons.", dnd_class_id: 13)
DndSubclass.create!(subclass_name: "Le Fiélon", description: "Les occultistes du fiélon sont des sorciers et des magiciens, utilisant leur savoir pour invoquer des entités surnaturelles et des démons.", dnd_class_id: 13)
DndSubclass.create!(subclass_name: "Le Grand Ancien", description: "Les occultistes du grand ancien sont des sorciers et des magiciens, utilisant leur savoir pour invoquer des entités surnaturelles et des démons.", dnd_class_id: 13)

puts "creating users"
User.create!(email: "bill@email.com", password: "password")
