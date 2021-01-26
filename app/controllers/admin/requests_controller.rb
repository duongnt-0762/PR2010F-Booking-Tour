class Admin::RequestsController < ApplicationController
  before_action :logged_in_user
  before_action :find_request, except: :index

  def index
    @requests = Request.paginate(page: params[:page])
  end

  def show
  end


  def update
    status = params[:status] + "!"
    @request.send(status)
    respond_to do |format|
      format.html { redirect_to admin_request_path }
      format.js
    end
  end

  private
  def find_request
    @request =  Request.find_by id: params[:id]
    unless @request.present?
      flash[:danger] = "Can not find request"
      redirect_to admin_requests_path
    end
  end
end
