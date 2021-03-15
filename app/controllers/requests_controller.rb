class RequestsController < ApplicationController
     before_action :logged_in_user, only: [:create, :edit]

      def new
        @request = Request.new
        stayed_days = Date.parse(params[:day_end]).mjd - Date.parse(params[:day_start]).mjd
        if ( stayed_days <= 0 )
          render :new
        else
          total_price = stayed_days * params[:tour_price].to_f
          render json: total_price
        end
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
        if @request.update(request_params)
        else
          render :edit
        end
      end

      private
      def request_params
        params.require(:request).permit(:tour_id, :price, :day_start, :day_end, :gues)
      end

      def find_request
        @request = Request.find_by id: params[:request_id]
        unless @request.present?
    			flash[:success] = "Request doesn't exist"
    			redirect_to root_url
    		end
    	end
      
  end
