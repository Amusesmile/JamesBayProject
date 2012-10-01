class AddCoordinatesToPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :latitude
    remove_column :photos, :longitude
    add_column :photos, :coordinates, :string
  end
end
