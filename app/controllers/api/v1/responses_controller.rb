class Api::V1::ResponsesController < ApplicationController
  before_action :require_login
  # GET /rentals
  def index
    @user = User.find(params[:user_id])
    @responses = @user.responses
    render json: @responses
  end

  # GET /rentals/:id
  def show
    @response = Response.find(params[:id])
    render json: @response
  end

  def create
    @response = Response.new(response_params)
    @response.user = User.find(params[:user_id])
    if @response.save
      render json: @response, status: :created
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if session_user.user_type == 'admin'
      @response = Response.find(params[:id])
      @response.destroy
      render json: { message: 'Response deleted successfully' }
    else
      render json: { message: 'You don\'t have permission to delete this response' }
    end
  end

  private

  def response_params
    params.require(:response).permit(:response_text, :is_correct, :marks_obtained, :user_id, :question_id, :quiz_id)
  end
end
