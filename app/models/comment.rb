class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :poster, class_name: User
	belongs_to :receiver, class_name: User
end
