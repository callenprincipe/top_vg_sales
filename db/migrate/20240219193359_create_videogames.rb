class CreateVideogames < ActiveRecord::Migration[7.1]
  def change
    create_table :videogames do |t|
      t.integer :rank
      t.string :name
      t.integer :year
      t.references :publisher, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
