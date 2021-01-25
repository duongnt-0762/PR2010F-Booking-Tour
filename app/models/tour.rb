class Tour < ApplicationRecord
	has_many :booking_tour
	has_many :requests
	has_many :reviews
	has_many :comments
	has_many :rates
	has_many :likes
	has_many_attached :images
	def display_image
		image.variant(resize_to_limit: [500, 500])
		en
	end
end
