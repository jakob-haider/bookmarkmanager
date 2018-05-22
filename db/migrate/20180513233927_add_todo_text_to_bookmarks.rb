class AddTodoTextToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :todotext, :text
  end
end
