class BookingsController < ApplicationController
  def new
    @customer = Customer.find(params[:customer_id])
    @booking = Booking.new(customer: @customer)
    @rooms = nil
  end

  def create
    if params[:commit] == "Show available rooms"
      show_rooms
    else
      @customer = Customer.find(params[:customer_id])
      checkin = params[:scheduled_checkin]
      checkout = params[:scheduled_checkout]
      @rooms = Room.get_available(checkin, checkout)
      @booking = Booking.new(scheduled_checkin: checkin, scheduled_checkout: checkout, customer: @customer, room: Room.find(params[:room_id]), status: params[:booking][:status])
      if @booking.save
        flash[:notice] = "Reservation registered succesfully."
        redirect_to customer_path(@customer)
      else
        flash[:alert] = "There was a problem submitting the reservation. Please try again."
        render :new
      end
    end
  end

  def show_rooms
    @customer = Customer.find(params[:customer_id])
    checkin = params[:scheduled_checkin]
    checkin = DateTime.strptime(checkin + '-04:00', '%m/%d/%Y %H:%M%z')
    checkout = params[:scheduled_checkout]
    checkout = DateTime.strptime(checkout + '-04:00', '%m/%d/%Y %H:%M%z')
    @rooms = Room.get_available(checkin, checkout)
    @booking = Booking.new(customer: @customer, scheduled_checkin: checkin, scheduled_checkout: checkout, status: params[:booking][:status])
    render :new
  end
end
