class CreateAcquirings < ActiveRecord::Migration[5.1]
  def change
    create_table :acquirings do |t|
      t.string :name
      t.datetime :date
      t.references :machinecategory, foreign_key: true

      t.timestamps
    end
  end
end
