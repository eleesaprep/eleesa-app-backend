class Api::V1::CarsController < ApplicationController
  skip_before_action :require_login, only: %i[show index]
  # GET /users
  def index
    @cars = Car.all
    render json: @cars
  end

  # GET /cars/:id
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def new
    @car = Car.new
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if session_user.role == 'admin'
      @car = Car.find(params[:id])
      @car.destroy
      render json: { message: 'Car deleted successfully' }
    else
      render json: { message: 'You don\'t have permission to delete this car' }
    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :color, :rental_rate_per_day, :availability)
  end
end
