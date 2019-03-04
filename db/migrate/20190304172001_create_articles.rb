class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :url
      t.string :source
      t.string :title
      t.references :category, foreign_key: true
      t.integer :upvote

      t.timestamps
    end
  end
end
