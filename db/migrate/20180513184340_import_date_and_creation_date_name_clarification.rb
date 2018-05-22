class ImportDateAndCreationDateNameClarification < ActiveRecord::Migration[5.1]
  def change
    rename_column :folders, :created_at, :importdate
    rename_column :bookmarks, :created_at, :importdate
    rename_column :folders, :dateadded, :created_at
    rename_column :bookmarks, :dateadded, :created_at
  end
end
