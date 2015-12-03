class User < ActiveRecord::Base
	include Gravtastic
	gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # ensure that users are at least 18 years old
  #validates :birthday, date: { after: Proc.new {Date.today.year - 18.years}}
  validate :name, :email, :password
  has_many :comments
  has_many :items
end
