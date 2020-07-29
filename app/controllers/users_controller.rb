class UsersController < ApplicationController
  def create
    @user = User.new(username: params[:username], password: params[:password_digest])
    if @user.save
      flash[:success] = 'You have successfully created an account!'
    else
      flash[:notice] = @user.errors.messages.first
    end
    redirect_to login_path
  end
end
