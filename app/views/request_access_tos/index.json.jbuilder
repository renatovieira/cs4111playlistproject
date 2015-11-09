json.array!(@request_access_tos) do |request_access_to|
  json.extract! request_access_to, :id, :user_id, :playlist_id
  json.url request_access_to_url(request_access_to, format: :json)
end
