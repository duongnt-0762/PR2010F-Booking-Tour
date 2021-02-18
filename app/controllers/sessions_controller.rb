class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:provider] =='facebook'
      user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to user
    elsif params[:provider] =='github'
      user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to user
    elsif params[:provider] =='google_oauth2'
      user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to user
    else
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        remember user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to user
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


  def github
    auth = request.env["omniauth.auth"]
    @user = User.from_omniauth auth

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication

      set_flash_message(:notice, :success, kind: "Github") if is_navigational_format?
    else
      session["devise.github_data"] = auth
      redirect_to new_user_session_url
    end
  end

  def failure
    redirect_to root_path
  end














end
