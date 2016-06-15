class User < ActiveRecord::Base

  ## Associations

  has_many :roles

  ## Validations

  validates_presence_of :name, :mobile, :roles_id, :password
  validates_uniqueness_of :name, :mobile

end
