class TagContext < ActiveRecord::Base
  has_many :tags
  accepts_nested_attributes_for :tags
  
  def to_s
    self.label
  end
end
