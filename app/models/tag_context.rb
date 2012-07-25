class TagContext < ActiveRecord::Base
  has_many :tags
  
  def to_s
    self.label
  end
end
