class Admin::ToursController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :find_tour, except: :index

  def index
    @tours = Tour.paginate(page: params[:page])
  end

  def edit
  end

  def show
  end
  def update
    host_user = params[:host_user] + "!"
    @tour.send(host_user)
    respond_to do |format|
      format.html { redirect_to admin_tours_path }
      format.js
    end
  end

  def destroy
    @tour.destroy
    redirect_to admin_tours_path
  end
  private
  def find_tour
    @tour =  Tour.find_by id: params[:id]
    unless @tour.present?
      flash[:danger] = "Can not find tour"
      redirect_to admin_tours_path
    end
  end
end
