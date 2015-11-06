class RequestAccessTo < ActiveRecord::Base
  self.table_name = "Request_Access_To"
  
  belongs_to :user
  belongs_to :playlist
end
