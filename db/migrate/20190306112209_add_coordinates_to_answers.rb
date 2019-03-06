class AddCoordinatesToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :latitude, :float
    add_column :answers, :longitude, :float
  end
end
