json.array!(@collaborates_ins) do |collaborates_in|
  json.extract! collaborates_in, :id, :user_id, :playlist_id
  json.url collaborates_in_url(collaborates_in, format: :json)
end
