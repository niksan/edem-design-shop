class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles

  def role?(role)
    !!self.roles.where(name: role.to_s.downcase).try(:first)
  end

end
