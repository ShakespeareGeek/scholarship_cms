class ProviderContact < ActiveRecord::Base
  belongs_to :provider, :class_name=>'ScholarshipProvider'
  belongs_to :state
end
