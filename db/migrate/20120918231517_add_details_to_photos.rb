class AddDetailsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photographer, :string
    add_column :photos, :collection, :string
    add_column :photos, :format, :string
    add_column :photos, :size, :string
    add_column :photos, :location, :string
    add_column :photos, :latitude, :decimal
    add_column :photos, :longitude, :decimal
    add_column :photos, :title, :string
    add_column :photos, :creeSyllables, :string
    add_column :photos, :description, :text
    add_column :photos, :longDescription, :text
    add_column :photos, :subjects, :text
    add_column :photos, :imageType, :string
    
    add_column :photos, :aestheticRating, :int    
    add_column :photos, :ethnographicRating, :int
    add_column :photos, :communityRating, :int
  end
end
