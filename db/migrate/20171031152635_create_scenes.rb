class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.string :pov
      t.string :events
      t.string :conflict
      t.integer :number
      t.integer :pages
      t.references :chapter
      t.timestamps
    end
  end
end
