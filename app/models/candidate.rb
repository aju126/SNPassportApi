class Candidate < ActiveRecord::Base

  # Associations

  belongs_to :group
  has_one :status

  # Validations

  validates_presence_of :group_id, :status_id, :name

end
