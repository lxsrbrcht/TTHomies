class Campaign < ApplicationRecord
  has_many :character_campaigns
  has_many :characters, through: :character_campaigns
end
