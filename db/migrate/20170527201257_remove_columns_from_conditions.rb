class RemoveColumnsFromConditions < ActiveRecord::Migration
  def change
    remove_column :conditions, :diagnosis_date, :patient_age, :gender
  end
end
