class User < ApplicationRecord
	has_many :review
	has_many :comment
	has_many :tour
	has_many :booking_tour
end
