json.array!(@songs) do |song|
  json.extract! song, :id, :title, :duration, :url, :source, :thumbnail
  json.url song_url(song, format: :json)
end
