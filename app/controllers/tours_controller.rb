class ToursController < ApplicationController
  def index
    @tours = Tour.paginate(page: params[:page]).per_page(20)
  end
end
