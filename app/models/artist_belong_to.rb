class ArtistBelongTo < ActiveRecord::Base
  self.table_name = "Artist_Belong_To"
  
  belongs_to :artist
  belongs_to :genre
end
