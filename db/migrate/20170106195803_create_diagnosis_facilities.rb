class CreateDiagnosisFacilities < ActiveRecord::Migration
  def change
    create_table :diagnosis_facilities do |t|
      t.integer :diagnosis_facility_id
      t.integer :location_id
      t.string :name

      t.timestamps null: false
    end
  end
end
