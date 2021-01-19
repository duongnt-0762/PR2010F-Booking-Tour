class ToursController < ApplicationController
	def show
		@tour = Tour.find_by id: params[:id]
		unless @tour.present?
			flash[:success] = "khong ton tai id nay"
			redirect_to root_url
		end
	end
end