class CreateFolders < ActiveRecord::Migration[5.1]
  def change
    create_table :folders, id: false do |t|
      t.primary_key :eid
      t.integer :parent_id
      t.string :title
      t.integer :index
      t.boolean :isrootparent
      t.datetime :dateadded
      t.timestamps
    end
  end
end
