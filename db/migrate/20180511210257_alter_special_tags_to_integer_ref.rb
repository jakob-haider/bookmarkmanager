class AlterSpecialTagsToIntegerRef < ActiveRecord::Migration[5.1]
  def change
    change_column :specialtags, :source, :integer
    change_column :specialtags, :direction, :string
    add_column :specialtags, :destination, :integer
  end
end
