class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # @reservation.time = params[]
    # @user.name = params[:user][:name]
    # @user.email = params[:user][:email]
    # @user.phone_number = params[:user][:phone_number]
    # @user.party_size = params[:user][:party_size]
    # @user.password = params[:user][:password]
    # @user.password_confirmation = params[:user][:password_confirmation]
    if @reservation.save
      flash[:notice] = "You're reservation is for ________"
      redirect_to reservations_path
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
