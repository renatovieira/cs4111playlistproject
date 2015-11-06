class User < ActiveRecord::Base
  self.table_name = "Users"
  
  has_many :collaborates_in
  has_many :playlists, through: :collaborates_in
  
  has_many :follow, class_name: "Follow", foreign_key: :follower_id
  has_many :following, through: :follow, source: :following
  
  has_many :inverse_follow, class_name: "Follow", foreign_key: :following_id
  has_many :followers, through: :inverse_follow, source: :follower
  
  def to_s
    self.username
  end
end
