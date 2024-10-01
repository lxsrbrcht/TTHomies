class CreateCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :start_date
      t.string :adventure
      t.string :description

      t.timestamps
    end
  end
end
