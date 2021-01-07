class Tour < ApplicationRecord
	has_many :booking_tour
	has_many :review
end
