class UsersController < ApplicationController
  def create
    if @user.save
      render json: {
        user: {
          username: @user.username
        }
      }
    else
      render json: {
        success: false
      }
    end
  end
  private
    def user_params
      params.require(:user).permit(:password, :username)
  end
end
