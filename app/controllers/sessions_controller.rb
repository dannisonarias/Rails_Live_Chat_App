class SessionsController < ApplicationController
  before_action :loggged_in_redirect, only:[:new,:create]
  def new
    @user = User.new
  end
  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password_digest])
      session[:user_id] = @user.id
      flash[:success] = "You have successfully logged in!"
      redirect_to root_path
    else
      flash.now[:error] = "There's something wrong with your login information"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out!"
    redirect_to root_path
  end
  private
  def loggged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end
end
