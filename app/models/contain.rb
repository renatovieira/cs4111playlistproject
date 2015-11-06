class Contain < ActiveRecord::Base
  self.table_name = "Contains"
  
  belongs_to :song
  belongs_to :playlist
end
