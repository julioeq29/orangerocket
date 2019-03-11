class AddNewColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :tag, foreign_key: true
  end
end
