class AddReferenceToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_reference :characters, :game, null: false, foreign_key: true
  end
end
