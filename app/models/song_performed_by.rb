class SongPerformedBy < ActiveRecord::Base
  self.table_name = "Song_Performed_By"
  self.primary_keys = :song_id, :artist_id
  
  belongs_to :song
  belongs_to :artist
  
  def to_s
    "#{song_id},#{artist_id}"
  end
end
