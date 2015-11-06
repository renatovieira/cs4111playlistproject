class User < ActiveRecord::Base
  self.table_name = "Users"
  
  has_many :collaborates_in
  has_many :playlists, through: :collaborates_in
  
  def to_s
    self.username
  end
end
