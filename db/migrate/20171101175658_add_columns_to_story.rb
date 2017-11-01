class AddColumnsToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :step1, :boolean, default: false
    add_column :stories, :step2, :boolean, default: false
    add_column :stories, :step3, :boolean, default: false
    add_column :stories, :step4, :boolean, default: false
    add_column :stories, :step5, :boolean, default: false
    add_column :stories, :step6, :boolean, default: false
    add_column :stories, :step7, :boolean, default: false
    add_column :stories, :step8, :boolean, default: false
    add_column :stories, :step9, :boolean, default: false
    add_column :stories, :step10, :boolean, default: false
  end
end
