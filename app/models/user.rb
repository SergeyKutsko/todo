class User < ActiveRecord::Base
  validates :email,  uniqueness: true
  validates_format_of :email, :with => /@/
  validates :email, :password, :password_confirmation, presence: true
  validates_confirmation_of :password

  has_many :todos

  devise :database_authenticatable, :registerable

end
