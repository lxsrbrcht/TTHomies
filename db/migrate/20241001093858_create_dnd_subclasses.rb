class CreateDndSubclasses < ActiveRecord::Migration[7.1]
  def change
    create_table :dnd_subclasses do |t|
      t.string :subclass_name
      t.string :description
      t.references :dnd_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
