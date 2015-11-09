class CollaboratesIn < ActiveRecord::Base
  self.table_name = "Collaborates_In"
  self.primary_keys = :user_id, :playlist_id
  
  belongs_to :user
  belongs_to :playlist
end
