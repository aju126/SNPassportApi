class StatusType < ActiveRecord::Base
  belongs_to :candidates
  belongs_to :group
end
