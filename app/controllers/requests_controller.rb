class RequestsController < ApplicationController
    # before_action :logged_in_user
    before_action :find_tour, only: [:show,:create, :edit,:new, :update, :destroy]

      def new
        @request = Request.new
      end

      def show
        @request = Request.find(param[:id])
      end

      def create
        @request = current_user.requests.new request_params
        if @request.save!
          flash[:success] = "Booking success"
          redirect_to tour_path(request_params[:tour_id])
        else
          flash[:danger] = "Save loi"
          render :new
        end
      end

      def update
        @request = Request.find(params[:id])
        if @request.update(request_params)
        else
          render :edit
        end
      end

      private
      def request_params
        params.require(:request).permit(:tour_id, :tour_price, :day_start, :day_end, :gues)
      end

      def find_tour
        @tour = Tour.find_by id: params[:tour_id]
      end


  end
