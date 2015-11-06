class CollaboratesIn < ActiveRecord::Base
  self.table_name = "Collaborates_In"
  
  belongs_to :user
  belongs_to :playlist
end
