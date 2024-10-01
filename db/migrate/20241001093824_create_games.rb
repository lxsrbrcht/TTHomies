class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :description

      t.timestamps
    end
  end
end
