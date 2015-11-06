class Playlist < ActiveRecord::Base
  self.table_name = "Playlists"
  
  has_many :collaborates_in
  has_many :collaborators, through: :collaborates_in, source: :user
  
  has_many :contains
  has_many :songs, through: :contains
  
  has_many :request_access_to
  has_many :requesters, through: :request_access_to, source: :user
  
  def to_s
    self.name
  end
end
