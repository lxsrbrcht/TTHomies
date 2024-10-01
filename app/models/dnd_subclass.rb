class DndSubclass < ApplicationRecord
  belongs_to :dnd_class
  validates :subclass_name, presence: true
end
