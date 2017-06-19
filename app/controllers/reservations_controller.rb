class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def index
    @reservations = Reservation.all
  end

  def create
  end
  
  def edit
  end

  def show
  end

  def destroy
  end

end
