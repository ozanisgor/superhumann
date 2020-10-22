class AddCoordinatesToChampions < ActiveRecord::Migration[6.0]
  def change
    add_column :champions, :latitude, :float
    add_column :champions, :longitude, :float
  end
end
