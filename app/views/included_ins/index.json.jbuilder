json.array!(@included_ins) do |included_in|
  json.extract! included_in, :id, :song_id, :album_id
  json.url included_in_url(included_in, format: :json)
end
