class AddDateColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :pub_date, :date
  end
end
