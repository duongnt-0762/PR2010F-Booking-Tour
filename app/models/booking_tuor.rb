class BookingTuor < ApplicationRecord
	belong_to :user
	belong_to :tour
end
