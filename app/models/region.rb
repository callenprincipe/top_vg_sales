class Region < ApplicationRecord
  has_many :region_videogames
  has_many :videogames, through: :region_videogames

  validates :name, presence: true, uniqueness: true
end
