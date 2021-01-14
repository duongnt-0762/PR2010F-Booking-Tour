class UsersController < ApplicationController
  before_action :admin_user
  def show
    @user =  User.find_by id: params[:id]
    unless @user.present?
      flash[:success] = "User doesn't exist"
      redirect_to root_url
    end
  end
  private
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
