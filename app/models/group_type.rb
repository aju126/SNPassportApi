class GroupType < ActiveRecord::Base

  # Associations

  belongs_to :group

  # Validations

  validates_presence_of :name
  validates_uniqueness_of :name
end
