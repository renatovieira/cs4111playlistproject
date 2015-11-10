json.array!(@contains) do |contain|
  json.extract! contain, :id, :playlist_id, :song_id
  json.url contain_url(contain, format: :json)
end
