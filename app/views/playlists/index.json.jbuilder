json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :name, :is_public
  json.url playlist_url(playlist, format: :json)
end
