class AddCategoriesToFolder < ActiveRecord::Migration[5.1]
  def change
    add_reference :folders, :category, foreign_key: true
  end
end
