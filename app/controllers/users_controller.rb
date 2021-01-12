class UsersController < ApplicationController
  def show
    @user =  User.find_by id: params[:id]
    unless @user.present?
      flash[:success] = "User doesn't exist"
      redirect_to root_url
    end
  end
end
