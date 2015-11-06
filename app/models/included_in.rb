class IncludedIn < ActiveRecord::Base
  self.table_name = "Included_In"
  
  belongs_to :song
  belongs_to :album
end
