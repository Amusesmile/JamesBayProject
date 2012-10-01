class AddIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :id2, :int
    #second ID that is entered manually.  The name id2 is proabably bad but the alternatives weren't great either
  end
end
