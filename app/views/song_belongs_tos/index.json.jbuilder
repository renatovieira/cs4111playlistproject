json.array!(@song_belongs_tos) do |song_belongs_to|
  json.extract! song_belongs_to, :id, :song_id, :genre_id
  json.url song_belongs_to_url(song_belongs_to, format: :json)
end
