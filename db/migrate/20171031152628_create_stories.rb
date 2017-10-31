class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :sentence
      t.string :paragraph
      t.text :page
      t.references :user
      t.timestamps
    end
  end
end
