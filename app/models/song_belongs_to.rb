class SongBelongsTo < ActiveRecord::Base
  self.table_name = "Song_Belongs_To"
  self.primary_keys = :song_id, :genre_id
  
  belongs_to :song
  belongs_to :genre
end
