class Admin::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      puts params
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    redirect_to admin_users_path
  end


  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render nothing: true
    end
  end

  def index
    @users = User.all.page params[:page]
  end

  private

  def user_params
    params.require(:user).permit(:email,:first_name,:last_name,:company_id,:csr)
  end
end
