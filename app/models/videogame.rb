class Videogame < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  belongs_to :publisher

  has_many :region_videogames
  has_many :regions, through: :region_videogames

  validates :rank, :name, :year, presence: true
  validates :name, uniqueness: true
  validates :rank, :year, numericality: {only_integer: true}
end
