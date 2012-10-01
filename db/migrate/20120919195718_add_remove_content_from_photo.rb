class AddRemoveContentFromPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :content 
  end
end
