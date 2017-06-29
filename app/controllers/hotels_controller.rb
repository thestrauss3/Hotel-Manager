class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @rooms = @hotel.rooms
  end

  def room_editor
    @hotel = Hotel.find(params[:id])
    @rooms = @hotel.rooms
  end
end
