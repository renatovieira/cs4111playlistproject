json.array!(@artist_belong_tos) do |artist_belong_to|
  json.extract! artist_belong_to, :id, :artist_id, :genre_id
  json.url artist_belong_to_url(artist_belong_to, format: :json)
end
