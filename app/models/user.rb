class User < ActiveRecord::Base
	include Gravtastic
	gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validate :name, :email, :password
  has_many :comments
  has_many :items
end
