class ToursController < ApplicationController
	def index
		@tours = Tour.paginate(page: params[:page]).per_page(20)
	end
	def show
		@tour = Tour.find_by id: params[:id]
		arr_rates = @tour.rates
		sum = 0
		arr_rates.each do|rate|
			sum+=rate.quantity
		end
		if sum > 0
			@total = sum/arr_rates.length
		end
		unless @tour.present?
			flash[:success] = "Tour doesn't exist"
			redirect_to root_url
		end
	end
end
