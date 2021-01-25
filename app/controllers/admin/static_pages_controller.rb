class Admin::StaticPagesController < ApplicationController
  before_action  :check_admin
  def index
  end

  def help
  end

  private

  def check_admin
    if logged_in?
      unless current_user.admin?
        redirect_to root_path
      end
    end
  end
end
