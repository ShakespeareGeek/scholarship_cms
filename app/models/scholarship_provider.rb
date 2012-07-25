class ScholarshipProvider < ActiveRecord::Base
  has_many :contacts, :class_name=>'ProviderContact'
  has_many :scholarships, :foreign_key=>'provider_id'
  accepts_nested_attributes_for :scholarships

end
