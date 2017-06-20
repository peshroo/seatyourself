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
    @restaurant = Restaurant.find(params[:id])
    @reservation.restaurant = @restaurant        #@reservation.restaurant_id = @restaurant.id

    # @restaurant = Restaurant.find(params[:id])
    # @reservation = @restaurant.reservations.new(reservation_params)
    # @reservation.user = current_user

    if @reservation.save
      flash[:notice] = "You're reservation is for ________"
      redirect_to reservations_path(@restaurant)
    else
      flash[:notice] = "Reservation unable to be created. Please try again!"
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
      flash[:alert] = ["Must be logged in to make reservation."]
      redirect_to root_path
    return
  end
end

end
