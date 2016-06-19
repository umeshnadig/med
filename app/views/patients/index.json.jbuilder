json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :cell_phone, :alt_phone, :email, :street, :city, :state, :country, :dob, :registration_on, :reference_id
  json.url patient_url(patient, format: :json)
end
