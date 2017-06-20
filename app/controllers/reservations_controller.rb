class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def index
    @reservations = Reservation.all
    # @restaurant = Restaurant.find(param[:restaurant_id])
  end

  def create

    @reservation = Reservation.new(reservation_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation.restaurant = @restaurant        #@reservation.restaurant_id = @restaurant.id

    # @restaurant = Restaurant.find(params[:id])
    # @reservation = @restaurant.reservations.new(reservation_params)
    # @reservation.user = current_user

    # require_login
    if @reservation.save
      flash[:notice] = ["You're reservation is for #{@reservation.time}"]
      redirect_to restaurant_reservation_path(@restaurant, @reservation)
    else
      flash[:notice] = ["Reservation unable to be created. Please try again!"]
      render :new
    end
  end

  def edit
  end

  def show
    require_login
    @reservation = Reservation.find(params[:id])
  end

  def destroy
  end

private

  def reservation_params
    params.require(:reservation).permit(:name, :email, :party_size, :date, :time)
  end

  def require_login
    unless current_user
      flash[:alert] = ["Sorry, you must be logged in to make reservation."]
      redirect_to root_path
    return
    end
  end

end
