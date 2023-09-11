class Api::V1::PaymentsController < ApplicationController
  before_action :require_login
    # GET /payments
    def index
      @payments = Payment.all
      render json: @payments
    end
  
    # GET /rentals/:id
    def show
      @Payment = Payment.find(params[:id])
      render json: @payment
    end
  
    def create
      @payment = Payment.new(payment_params)
      if @payment.save
        render json: @payment, status: :created
      else
        render json: @payment.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def payment_params
      params.require(:payment).permit(:amount, :payment_date, :payment_method)
    end
end
  