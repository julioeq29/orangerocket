class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :id_from_source, :string
  end
end
