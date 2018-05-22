class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks, id: false do |t|
      t.primary_key :eid
      t.string :title
      t.string :url
      t.integer :index
      t.datetime :dateadded
      t.references :folder
      t.timestamps
    end
  end
end
