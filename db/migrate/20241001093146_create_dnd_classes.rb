class CreateDndClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :dnd_classes do |t|
      t.string :class_name
      t.string :description

      t.timestamps
    end
  end
end
