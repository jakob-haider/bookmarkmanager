class RenameFoldersIndexToPosition < ActiveRecord::Migration[5.1]
  def change
    rename_column :folders, :index, :position
  end
end
