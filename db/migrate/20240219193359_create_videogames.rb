class CreateVideogames < ActiveRecord::Migration[7.1]
  def change
    create_table :videogames do |t|
      t.integer :rank
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
