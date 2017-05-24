class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :condition_category_id
      t.date :diagnosis_date
      t.string :name
      t.integer :diagnosis_facilty_id
      t.integer :patient_age
      t.string :gender

      t.timestamps null: false
    end
  end
end
