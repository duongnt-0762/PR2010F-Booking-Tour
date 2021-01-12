class Tour < ApplicationRecord
	has_many :booking_tour
	has_many :reviews
	has_many :comments
	has_many :rates
	has_many :likes
end
