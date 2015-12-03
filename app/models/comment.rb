class Comment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  validates :contents, presence: true, allow_blank: false
end
