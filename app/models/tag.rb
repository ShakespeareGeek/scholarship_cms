class Tag < ActiveRecord::Base
  belongs_to :tag_context
  has_and_belongs_to_many :scholarships
end
