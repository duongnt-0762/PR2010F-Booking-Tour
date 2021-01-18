class UsersController < ApplicationController
  def show
    @user =  User.find_by id: params[:id]
    if current_user.admin?
      redirect_to admin_index_url
    end
    unless @user.present?
      flash[:success] = "User doesn't exist"
      redirect_to root_url
    end
  end
end
