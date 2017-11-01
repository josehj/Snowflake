class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :character_1
      t.integer :character_2
      t.string :relation
      t.string :color
      t.timestamps
    end
  end
end
