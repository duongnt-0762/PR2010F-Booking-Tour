class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Air bnb!"
      redirect_to @user
    else
      render :new
    end
  end

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

  private
 def user_params
   params.require(:user).permit :name, :email, :password,:password_confirmation
 end
end
