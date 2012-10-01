class CreatePhotosGroupsTable < ActiveRecord::Migration
def self.up
  create_table :groups_photos, :id => false do |t|
    t.integer :photo_id
    t.integer :group_id
  end
end

def self.down
  drop_table :groups_photos
end
end
