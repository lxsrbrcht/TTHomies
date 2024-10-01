class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :dnd_class, through: :characterclass
  has_many :dnd_subclass, through: :characterclass
end
