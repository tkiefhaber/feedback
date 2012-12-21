class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects, :through => :permissions
  has_many :permissions

  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  validates :username, :uniqueness => true
  validates :email, :uniqueness => true
end
