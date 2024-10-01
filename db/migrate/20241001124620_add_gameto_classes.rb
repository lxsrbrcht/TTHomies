class AddGametoClasses < ActiveRecord::Migration[7.1]
  def change
    add_reference :dnd_classes, :game, foreign_key: true
    add_reference :dnd_subclasses, :game, foreign_key: true
  end
end
