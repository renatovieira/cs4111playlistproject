class ArtistBelongTo < ActiveRecord::Base
  self.table_name = "Artist_Belong_To"
  self.primary_keys = :artist_id, :genre_id
  
  belongs_to :artist
  belongs_to :genre
end
