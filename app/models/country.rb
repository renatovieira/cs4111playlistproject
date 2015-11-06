class Country < ActiveRecord::Base
  self.table_name = "Countries"
  
  def to_s
    self.name
  end
end
