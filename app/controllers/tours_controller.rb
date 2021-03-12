class ToursController < ApplicationController
	before_action :find_tour, only: [:show]
	before_action :logged_in_user, only: [:new, :create, :destroy, :edit, :update,]
	before_action :correct_user, only: [ :edit, :destroy]

	def new
		@tour=Tour.new
	end

	def edit
	end

	def index
		@tours = Tour.paginate(page: params[:page]).per_page(20)
	end

	def show

		arr_rates = @tour.rates
		sum = 0
		arr_rates.each do|rate|
			sum+=rate.quantity
		end
		if sum > 0
			@total = sum/arr_rates.length
		end
	end

	def update
		if @tour.update(tour_params)
			redirect_to @tour
		else
			render 'edit'
		end
	end

	def create
		@tour = current_user.tours.build(tour_params)
		@tour.image.attach(params[:tour][:image])
		if @tour.save
			redirect_to @tour
			flash[:success] = I18n.t ('controllers.admin.create')
		else
			render :new
		end
	end

	private

	def find_tour
		@tour = Tour.find_by id: params[:id]
		@request = Request.new
		unless @tour.present?
			flash[:success] = "Tour doesn't exist"
			redirect_to root_url
		end
	end

	def tour_params
		params.require(:tour).permit(:title, :guest, :address, :phone_number, :price, :rules,:content,
		:description, :host, :status,:room,:bed, :bathroom, :house_type, :image,  convenient:[],
		furniture:[],)
	end
	def correct_user
		@tour = current_user.tours.find_by(id: params[:id])
		redirect_to root_url if @tour.nil?
	end

end
