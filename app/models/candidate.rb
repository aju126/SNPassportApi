class Candidate < ActiveRecord::Base
  belongs_to :group
  has_one :status
end
