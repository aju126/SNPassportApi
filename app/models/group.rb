class Group < ActiveRecord::Base

  # Associations

  has_many :candidates
  has_one :group_type
  has_one :status
  has_one :user

  # Validations

  validates_presence_of :name, :grout_type_id, :status_id
  validates_uniqueness_of :name
end
