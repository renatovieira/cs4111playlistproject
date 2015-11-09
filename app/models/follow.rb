class Follow < ActiveRecord::Base
  self.table_name = "Follows"
  self.primary_keys = :follower_id, :following_id
  
  belongs_to :follower, class_name: "User"
  belongs_to :following, class_name: "User"
  
  def to_s
    "#{follower_id},#{following_id}"
  end
end
