class RentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @rents = Rent.all
  end
  def show
    @rent = Rent.find(params[:id])
  end
  def new
    @boat = Boat.find(params[:boat_id])
  @rent = Rent.new

  end
  def create
    @rent = Rent.new(rent_params)
    @boat = Boat.find(params[:boat_id])
    @rent.user = current_user
    @rent.boat = @boat
    if @rent.save
      redirect_to rents_path(@rent)
    else
      render :new
    end
  end
  def update
    if @rent.update(rent_params)
      redirect_to rents_path(@rent)
    else
      render :edit
    end
  end
  def destroy
    if @rent.destroy
      redirect_to rents_path(@rent)
    else
      render :index
    end
  end
  private
  def rent_params
    params[:rent].permit(:reservation_date_begin, :reservation_date_end, :boat_id, :user_id)
  end
end
