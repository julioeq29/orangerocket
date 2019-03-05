class AddColumnToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :photo, :string
  end
end
