class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user.name = params[:user][:name]
    # @user.email = params[:user][:email]
    # @user.phone_number = params[:user][:phone_number]
    # @user.party_size = params[:user][:party_size]
    # @user.password = params[:user][:password]
    # @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      flash[:notice] = "User succesfully created!"
      redirect_to "/users"
    else
      flash[:notice] = "User unable to be created. Please try again!"
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end
# :email, :phone_number, :party_size

  end
