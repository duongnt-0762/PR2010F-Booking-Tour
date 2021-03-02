class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    if auth.present?
      user = User.from_omniauth(auth)
      session[:user_id] = user.id
      flash[:success] = "Welcome #{user.name}!"
      redirect_to root_path
    else
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        if user.admin?
          redirect_to admin_index_url
        else
          remember user
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          flash[:success] = "Welcome #{user.name}!"
          redirect_to root_path
        end
      else
        flash[:danger] = 'Invalid email/password combination'
        render :new
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
