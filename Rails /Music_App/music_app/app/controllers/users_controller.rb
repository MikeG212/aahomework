class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      @user.login!
    else
      flash.now[:errors]
      render :new
    end
  end

  def show
    @user = User.find_by(user_params)
    if !!@user
      render :show
    else
      flash.now[:errors]
      render :new
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end
