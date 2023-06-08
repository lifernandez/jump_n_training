class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit( :first_name, :last_name, :email )
  end
end
