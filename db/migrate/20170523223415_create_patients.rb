class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :gender, limit: 1
      t.integer :age
      t.references :condition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
