class BookingsController < ApplicationController
  def new
    @customer = Customer.find(params[:customer_id])
    @booking = Booking.new
  end
end
