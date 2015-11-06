class Genre < ActiveRecord::Base
  self.table_name = "Genres"
  
  has_many :artist_belong_to
  has_many :artists, through: :artist_belong_to
  
  has_many :song_belongs_to
  has_many :songs, through: :song_belongs_to
  
  def to_s
    self.name
  end
end
