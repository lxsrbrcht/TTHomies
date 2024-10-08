class Characterclass < ApplicationRecord
  belongs_to :character_id
  belongs_to :dnd_class
  belongs_to :dnd_subclass
end
