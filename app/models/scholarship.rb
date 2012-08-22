class Scholarship < ActiveRecord::Base
  belongs_to :provider, :class_name=>'ScholarshipProvider'
  has_and_belongs_to_many :tags
  has_many :comments, :class_name=>'ScholarshipComment'
end
