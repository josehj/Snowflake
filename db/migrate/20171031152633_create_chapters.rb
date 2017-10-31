class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.text :summary
      t.references :story
      t.string :title
      t.timestamps
    end
  end
end
