class Item < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :photos, dependent: :destroy
	belongs_to :user
	validates :title, presence: true
end
