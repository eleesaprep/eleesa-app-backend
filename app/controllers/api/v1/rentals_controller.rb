class Api::V1::RentalsController < ApplicationController
    before_action :require_login
    # GET /rentals
    def index
      @user = User.find(params[:user_id])
      @rentals = @user.rentals
      render json: @rentals
    end
  
    # GET /rentals/:id
    def show
      @rental = Rental.find(params[:id])
      render json: @rental
    end
  
    def create
      @rental = Rental.new(rental_params)
      @rental.user = User.find(params[:user_id])
      if @rental.save
        render json: @rental, status: :created
      else
        render json: @rental.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @rental = Rental.find(params[:id])
      @rental.destroy
      render json: { message: 'Rental deleted successfully' }
    end
  
    private
  
    def rental_params
      params.require(:rental).permit(:pickup_date, :return_date, :total_cost, :status, :car_id, :user_id)
    end
  end
  