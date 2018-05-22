class AddDateLastViewedToBookmark < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :last_viewed, :date
  end
end
