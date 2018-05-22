class AddLastEditedToFolder < ActiveRecord::Migration[5.1]
  def change
    add_column :folders, :lastedited, :datetime
  end
end
