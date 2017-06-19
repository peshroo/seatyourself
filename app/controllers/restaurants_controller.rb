class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = @restaurant.reservations.new
    # like doing Reservation.new but automatically associates this res. with the restaurant it's tied to
  end

  def create
  end


end
