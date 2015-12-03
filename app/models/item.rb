class Item < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :photos, dependent: :destroy
	belongs_to :user
	validates :title, :summary, :price, :location, :category, presence: true
	default_scope { order('created_at DESC') }
end
