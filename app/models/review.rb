class Review < ApplicationRecord
	belong_to :user
	has_many :comment
	has_many :like
end
