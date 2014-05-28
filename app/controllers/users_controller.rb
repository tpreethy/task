class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])

    if @user.update(params[:user].permit(:name, :address, :city, :state, :zip_code, :school, :years_practice))
      redirect_to @user
    else
      render 'edit'
    end
  end
  def create
    @user = User.new(params[:user].permit(:name, :address, :city, :state,:zip_code, :school, :years_practice))
    if @user.save
    redirect_to @user
    else
      render 'new'
   end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end
  private
  def user_params
    params.require(:user).permit(:name, :address, :city, :state,:zip_code, :school, :years_practice)
  end
end
