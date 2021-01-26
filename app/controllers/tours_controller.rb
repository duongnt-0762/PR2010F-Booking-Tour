class ToursController < ApplicationController
	def index
    @tours = Tour.paginate(page: params[:page]).per_page(20)
  end
	def show
		@tour = Tour.find_by id: params[:id]
		unless @tour.present?
			flash[:success] = "khong ton tai id nay"
			redirect_to root_url
		end
	end
end
