class Group < ActiveRecord::Base
  has_many :candidates
  has_one :group_type
  has_one :status
end
