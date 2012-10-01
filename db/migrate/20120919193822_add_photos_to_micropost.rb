class AddPhotosToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :photo_id, :int
    add_index :microposts, :photo_id
  end
end
