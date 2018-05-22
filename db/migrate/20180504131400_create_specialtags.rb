class CreateSpecialtags < ActiveRecord::Migration[5.1]
  def change
    create_table :specialtags do |t|
      t.string :name
      t.string :source
      t.string :direction

      t.timestamps
    end
  end
end
