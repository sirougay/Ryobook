class Article < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :likes, dependent: :destroy

	def liked_by?(user)
		likes.where(user_id: user.id).exists?
	end
end
