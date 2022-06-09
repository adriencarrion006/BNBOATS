class RentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @rents = Rent.all
  end
  def show
    @rent = Rent.find(params[:id])
    @boat = Boat.find(@rent[:boat_id])
    @number_days = @rent.reservation_date_end.strftime("%j").to_i-@rent.reservation_date_begin.strftime("%j").to_i
    @boat_price = @boat.price * @number_days

  end
  def new
    @boat = Boat.find(params[:boat_id])
    @rent = Rent.new
    @rents = @boat.rents
    @rents_dates = @rents.map do |rent|
      {
        from: rent.reservation_date_begin,
        to: rent.reservation_date_end
      }
    end

  end
  def create
    @rent = Rent.new(rent_params)
    @boat = Boat.find(params[:boat_id])
    @rent.user = current_user
    @rent.boat = @boat
    if @rent.save
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end
  def edit
    @rent = Rent.find(params[:id])
  end
  def update

    @rent = Rent.find(params[:id])
    if @rent.update(rent_params)
      redirect_to rent_path(@rent)
    else
      render :edit
    end
  end
  def destroy
    @rent = Rent.find(params[:id])
    if @rent.destroy
      redirect_to boats_path
    else
      render :index
    end
  end
  private
  def rent_params
    params[:rent].permit(:reservation_date_begin, :reservation_date_end, :boat_id, :user_id)
  end
end
