class StatusType < ActiveRecord::Base
  belongs_to :candidates
  belongs_to :group

  validates_presence_of :name
  validates_uniqueness_of :name

end
