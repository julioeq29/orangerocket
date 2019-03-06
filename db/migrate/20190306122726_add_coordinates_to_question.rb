class AddCoordinatesToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :latitude, :float
    add_column :questions, :longitude, :float
  end
end
