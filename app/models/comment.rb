class Comment < ApplicationRecord
	belong_to :user
	belong_to :review
	has_many :like
end
