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

	def	new
		stayed_days = Date.parse(params[:day_end]).mjd - Date.parse(params[:day_start]).mjd
		if ( stayed_days <= 0 )
			 render :new
		else
		   total_price = stayed_days * params[:tour_price].to_f
		   render json: total_price
		end
	end

end
