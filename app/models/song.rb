class Song < ActiveRecord::Base
  self.table_name = "Songs"
  
  has_many :contains
  has_many :playlists, through: :contains
  
  has_many :included_in
  has_many :albums, through: :included_in
  
  has_many :song_belongs_to
  has_many :genres, through: :song_belongs_to
  
  has_many :song_performed_by
  has_many :artists, through: :song_performed_by
  
  def to_s
    self.title
  end
end
