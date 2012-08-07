class TagContext < ActiveRecord::Base
  has_many :tags
  accepts_nested_attributes_for :tags
  has_permalink :label
  
  def to_s
    self.label
  end
end
