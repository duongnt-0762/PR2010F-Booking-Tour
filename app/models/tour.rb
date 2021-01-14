class Tour < ApplicationRecord
	has_many :requests
	has_many :reviews
	has_many :comments
	has_many :rates
	has_many :likes
end
