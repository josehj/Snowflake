class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :last_name
      t.string :summary
      t.string :motivation
      t.string :goal
      t.string :epiphany
      t.string :storyline
      t.text :synopses
      t.integer :importance
      t.integer :age
      t.string :religion
      t.string :appearance
      t.string :core_aspects
      t.references :story
      t.timestamps
    end
  end
end
