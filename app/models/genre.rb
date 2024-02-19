class Genre < ApplicationRecord
  has_many :videogames
  validates :name, presence: true, uniqueness: true
end
