class User < ActiveRecord::Base
  validates :email,  uniqueness: true
  validates :email, :password, :password_confirmation, presence: true

  has_many :todos

  devise :database_authenticatable, :registerable

end
