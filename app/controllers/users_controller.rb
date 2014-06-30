class UsersController < ApplicationController
  skip_before_action :require_login, only: [:show, :new, :create]

  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts
  end

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

