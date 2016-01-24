class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.timestamps null: false
      
      t.string :title
      t.string :title_short
      t.string :synopsis
      
    end
  end
end
