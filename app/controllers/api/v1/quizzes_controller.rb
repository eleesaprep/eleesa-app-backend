class Api::V1::QuizzesController < ApplicationController
  before_action :require_login
  # GET /users
  def index
    @quizzes = Quiz.all
    render json: @quizzes
  end

  # GET /cars/:id
  def show
    @quiz = Quiz.find(params[:id])
    render json: @quiz
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      render json: @quiz, status: :created
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  def new
    @quiz = Quiz.new
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      render json: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if session_user.user_type == 'admin'
      @quiz = Quiz.find(params[:id])
      @quiz.destroy
      render json: { message: 'Quiz deleted successfully' }
    else
      render json: { message: 'You don\'t have permission to delete this quiz' }
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:exam_date, :exam_title, :duration, :total_marks, :course_id)
  end
end
