class BookingTuor < ApplicationRecord
	belongs_to :user
	belongs_to :tour
end
