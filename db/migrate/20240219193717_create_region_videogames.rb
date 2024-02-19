class CreateRegionVideogames < ActiveRecord::Migration[7.1]
  def change
    create_table :region_videogames do |t|
      t.references :videogame, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.float :sales

      t.timestamps
    end
  end
end
