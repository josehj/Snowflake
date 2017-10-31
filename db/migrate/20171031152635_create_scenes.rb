class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|

      t.timestamps
    end
  end
end
