class AddColumnsToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :name_nyt, :string
    add_column :categories, :name_guardian, :string
  end
end
