class RegionVideogame < ApplicationRecord
  belongs_to :videogame
  belongs_to :region
end
