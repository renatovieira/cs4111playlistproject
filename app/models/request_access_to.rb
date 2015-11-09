class RequestAccessTo < ActiveRecord::Base
  self.table_name = "Request_Access_To"
  self.primary_keys = :user_id, :playlist_id
  
  belongs_to :user
  belongs_to :playlist
end
