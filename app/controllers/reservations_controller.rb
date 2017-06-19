class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def edit
  end

  def show
  end

  def destroy
  end

end
