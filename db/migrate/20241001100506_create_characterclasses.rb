class CreateCharacterclasses < ActiveRecord::Migration[7.1]
  def change
    create_table :characterclasses do |t|
      t.references :character, null: false, foreign_key: true
      t.references :dnd_class, null: false, foreign_key: true
      t.references :dnd_subclass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
