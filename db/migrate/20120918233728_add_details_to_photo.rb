class AddDetailsToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :dateTaken, :date
  end
end
