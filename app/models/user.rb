class User < ActiveRecord::Base

  ## Associations

  has_many :roles

  ## Validations

  validates_presence_of :name, :mobile, :roles_id, :password
  validates_uniqueness_of :name, :mobile

  scope :with_role, -> (roles_id)     { where(roles_id: roles_id) if roles_id.present?}
  scope :with_name, -> (name)         { where(name: name) if name.present? }
  scope :with_mobile, -> (mobile)     { where(mobile: mobile) if mobile.present? }

  def self.filter_by(options = {})
    options.blank? ? all : with_role(options[:roles_id]).with_name(options[:name]).with_mobile(options[:mobile])
  end
end
