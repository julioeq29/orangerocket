class RemoveLocationFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :location
  end
end
