class AddIconsToFolder < ActiveRecord::Migration[5.1]
  def change
    add_column :folders, :folderlabel_id, :integer
    add_column :folders, :foldercolor, :string
  end
end
