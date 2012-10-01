class AddChangeMicropostIndex < ActiveRecord::Migration
  def up
    remove_index :microposts, :photo_id
    add_index :microposts, [:photo_id, :created_at] #multiple key index
  end
end
