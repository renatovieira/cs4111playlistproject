class SongBelongsTo < ActiveRecord::Base
  self.table_name = "Song_Belongs_To"
  
  belongs_to :song
  belongs_to :genre
end
