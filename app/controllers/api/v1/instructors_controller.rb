class Api::V1::InstructorsController < ApplicationController
  before_action :require_login
  # GET /instructors
  def index
    @instructors = Instructor.all
    render json: @instructors
  end

  # GET /questions/:id
  def show
    @instructor = Instructor.find(params[:id])
    render json: @instructor
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      render json: @instructor, status: :created
    else
      render json: @instructor.errors, status: :unprocessable_entity
    end
  end

  def new
    @instructor = Instructor.new
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params)
      render json: @instructor
    else
      render json: @instructor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if session_user.user_type == 'admin'
      @instructor = Instructor.find(params[:id])
      @instructor.destroy
      render json: { message: 'Instructor deleted successfully' }
    else
      render json: { message: 'You don\'t have permission to delete this Instructor' }
    end
  end

  private

  def instructor_params
    params.require(:instructor).permit(:full_name, :email, :department, :course_id)
  end
end
