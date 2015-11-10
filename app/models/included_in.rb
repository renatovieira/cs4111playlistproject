class IncludedIn < ActiveRecord::Base
  self.table_name = "Included_In"
  self.primary_keys = :song_id, :album_id
  
  belongs_to :song
  belongs_to :album
end
