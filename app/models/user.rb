class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # ensure that users are at least 18 years old
  validates :birthday, date: { after: Proc.new {Date.today.year - 18.years}}
  validate :email, :password
  has_many :comments
  has_many :items
end
