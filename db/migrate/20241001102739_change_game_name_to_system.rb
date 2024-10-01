class ChangeGameNameToSystem < ActiveRecord::Migration[7.1]
  def change
    rename_column :games, :game_name, :system
  end
end
