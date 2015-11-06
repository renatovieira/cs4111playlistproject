class Artist < ActiveRecord::Base
  self.table_name = "Artists"
  
  has_many :artist_belong_to
  has_many :genres, through: :artist_belong_to
  
  has_many :song_performed_by
  has_many :songs, through: :song_performed_by
  
  def to_s
    self.name
  end
end
