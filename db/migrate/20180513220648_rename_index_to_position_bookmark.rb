class RenameIndexToPositionBookmark < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookmarks, :index, :position
  end
end
