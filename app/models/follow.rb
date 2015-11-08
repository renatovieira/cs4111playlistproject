class Follow < ActiveRecord::Base
  self.table_name = "Follows"
  self.primary_key = "follower_id"
  
  belongs_to :follower, class_name: "User"
  belongs_to :following, class_name: "User"
end
