json.array!(@diagnosis_facilities) do |diagnosis_facility|
  json.extract! diagnosis_facility, :id, :diagnosis_facility_id, :location_id, :name
  json.url diagnosis_facility_url(diagnosis_facility, format: :json)
end
