class Api::V1::UsersController < ApplicationController
  before_action :require_login
  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def destroy
    if session_user.user_type == 'admin'
      @user = User.find(params[:id])
      @user.destroy
      render json: { message: 'User deleted successfully' }
    else
      render json: { message: 'You don\'t have permission to delete this user' }
    end
  end
end
