class CreateCharacterCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :character_campaigns do |t|
      t.references :character, null: false, foreign_key: true
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
