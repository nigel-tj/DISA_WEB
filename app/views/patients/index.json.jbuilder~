json.array!(@conditions) do |condition|
  json.extract! condition, :id, :condition_category_id, :diagnosis_date, :name, :diagnosis_facilty_id, :patient_age, :gender
  json.url condition_url(condition, format: :json)
end
