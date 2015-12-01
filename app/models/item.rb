class Item < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :photos, dependent: :destroy
	validates :title, presence: true
end
