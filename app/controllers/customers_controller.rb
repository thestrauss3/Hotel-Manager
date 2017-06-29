class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @future_bookings = @customer.bookings.where(status: 'Reservations')
    @current_bookings = @customer.bookings.where(status: 'Checked in')
    @past_bookings = @customer.bookings.where(status: 'Checked out')
    @cancelled_bookings = @customer.bookings.where(status: 'Cancelled')
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "#{@customer.name} registered."
      redirect_to customer_path(@customer.id)
    else
      flash[:alert] = "Registration not successful."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def customer_params
    params.require(:customer).permit(
      :name,
      :phone,
      :email
    )
  end
end
