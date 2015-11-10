class Contain < ActiveRecord::Base
  self.table_name = "Contains"
  self.primary_keys = :song_id, :playlist_id
  
  belongs_to :song
  belongs_to :playlist
end
