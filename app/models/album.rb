class Album < ActiveRecord::Base
  self.table_name = "Albums"
  
  has_many :included_in
  has_many :songs, through: :included_in
  
  def to_s
    self.title
  end
end
