json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :time, :referenceid
  json.url appointment_url(appointment, format: :json)
end
