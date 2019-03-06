class AddCoordinatesToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :location, :string
  end
end

