class FloorsController < ApplicationController
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @floors = @hotel.floors
  end

  def show
    @floor = Floor.find(params[:id])
    @rooms = @floor.rooms
  end
end
