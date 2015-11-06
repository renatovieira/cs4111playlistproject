class SongPerformedBy < ActiveRecord::Base
  self.table_name = "Song_Performed_By"
  
  belongs_to :song
  belongs_to :artist
end
