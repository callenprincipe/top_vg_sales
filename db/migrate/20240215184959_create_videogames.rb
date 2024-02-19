class CreateVideogames < ActiveRecord::Migration[7.1]
  def change
    create_table :videogames do |t|
      t.string :name
      t.integer :rank
      t.integer :year

      t.timestamps
    end
  end
end
