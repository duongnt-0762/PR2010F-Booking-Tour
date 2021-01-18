class Admin::RequestsController < ApplicationController
  def index
  	@requests = Request.paginate(page: params[:page])
  end

  def show
    @request =  Request.find_by id: params[:id]
  end
end
