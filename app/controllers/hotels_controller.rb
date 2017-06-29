class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @floors = @hotel.floors
    @rooms = @hotel.rooms
  end
end
