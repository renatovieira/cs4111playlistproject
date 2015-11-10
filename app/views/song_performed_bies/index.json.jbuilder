json.array!(@song_performed_bies) do |song_performed_by|
  json.extract! song_performed_by, :id, :song_id, :artist_id
  json.url song_performed_by_url(song_performed_by, format: :json)
end
