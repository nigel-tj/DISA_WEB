class RemoveMoreColumnsFromConditions < ActiveRecord::Migration
  def change
    remove_columns :conditions, :patient_age, :gender
  end
end
