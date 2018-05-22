class BookmarkTags < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks_tags, id:false do |t|
      t.belongs_to :bookmark, index: true #note neu mit belongs_to, unterschied zu references?
      t.belongs_to :tag, index: true
    end
  end
end
