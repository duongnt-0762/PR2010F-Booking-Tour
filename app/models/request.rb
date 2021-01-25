class Request < ApplicationRecord
  attr_accessor :tour_price
	belongs_to :tour
  before_save :tour_price
  before_save :number_of_stayed

  # def tour_price
  #   self.payment = self.tour_price * stay_time
  # end

  def number_of_stayed
    self.stayed = stay_time
  end

  private
  def stay_time
    self.day_end.mjd - self.day_start.mjd
  end
end
