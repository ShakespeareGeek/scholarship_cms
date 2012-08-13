class Tag < ActiveRecord::Base
  belongs_to :tag_context
  has_and_belongs_to_many :scholarships, :order=>"name"
  has_permalink :label
  
  def to_s
    self.label
  end
end
