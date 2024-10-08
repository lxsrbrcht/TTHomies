class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.references :user, null: false, foreign_key: true
      t.string :bio

      t.timestamps
    end
  end
end
