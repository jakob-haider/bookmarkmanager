class FoldersOnTags < ActiveRecord::Migration[5.1]
  def change
    create_table :folders_tags, id:false do |t|
      t.belongs_to :folder, index: true
      t.belongs_to :tag, index: true
    end
  end
end
